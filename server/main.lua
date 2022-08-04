local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.driftItem, function(source)
    local src = source
    TriggerClientEvent('qb-drifting:client:drifmode', src)
end)


QBCore.Functions.CreateCallback('qb-drifting:server:isOwner', function(source, cb, _plate)
    local Player = QBCore.Functions.GetPlayer(source)
    local player_cars = MySQL.Sync.fetchScalar('SELECT COUNT(*) FROM player_vehicles WHERE citizenid = ? AND plate = ?', {Player.PlayerData.citizenid, _plate})
    if player_cars > 0 then
        cb(true)
    else
        cb(false)
    end
end)
