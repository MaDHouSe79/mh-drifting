local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.driftItem, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local player_cars = MySQL.Sync.fetchScalar('SELECT COUNT(*) FROM player_vehicles WHERE citizenid = ? AND plate = ?', {Player.PlayerData.citizenid, plate})
    if player_cars >= 1 then
        TriggerClientEvent('qb-drifting:client:drifmode', src)
    else
        TriggerClientEvent('QBCore:Notify', src, "This is not your vehicle", "error")
    end
end)
