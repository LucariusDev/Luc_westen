ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem(Luc.BigItemVest, function (source)

    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(Luc.BigItemVest, 1)
    TriggerClientEvent('Luc:WestenBig', source)
end)

ESX.RegisterUsableItem(Luc.SmallItemVest, function (source)

    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem(Luc.SmallItemVest, 1)
    TriggerClientEvent('Luc:WestenSmall', source)
end)