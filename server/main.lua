local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem(Config.driftItem, function(source)
    TriggerClientEvent('qb-drifting:client:drifmode', source)
end)