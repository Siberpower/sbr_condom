ESX = nil

TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

ESX.RegisterUsableItem('condom', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('sbr_condom:armour', source)
    xPlayer.removeInventoryItem('condom', 1)
end)

ESX.RegisterUsableItem('condom1', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('sbr_condom:armour1', source)
    xPlayer.removeInventoryItem('condom1', 1)
end)

RegisterNetEvent('condomgive')
AddEventHandler('condomgive', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom', 1)
end)

RegisterNetEvent('condomgive1')
AddEventHandler('condomgive1', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom1', 1)
end)

ESX.RegisterUsableItem('condom2', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('sbr_condom:condom2', source)
    xPlayer.removeInventoryItem('condom2', 1)
end)

ESX.RegisterUsableItem('condom3', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('sbr_condom:condom3', source)
    xPlayer.removeInventoryItem('condom3', 1)
end)

RegisterNetEvent('condomgive')
AddEventHandler('condomgive', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom', 1)
end)


RegisterNetEvent('condomgive2')
AddEventHandler('condomgive2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom21, 1)
end)


RegisterNetEvent('condomgive2')
AddEventHandler('condomgive2', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom2', 1)
end)

RegisterNetEvent('condomgive3')
AddEventHandler('condomgive3', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('condom3', 1)
end)

RegisterNetEvent('condomcikart')
AddEventHandler('condomcikart', function()
    local xPLayer = ESX.GetPlayerFromId(source)
    xPLayer.addInventoryItem('condom', 1)
end)

RegisterNetEvent('condomcikart1')
AddEventHandler('condomcikart1', function()
    local xPLayer = ESX.GetPlayerFromId(source)
    xPLayer.addInventoryItem('condom1, 1)
end)

RegisterNetEvent('condomcikart2')
AddEventHandler('condomcikart2', function()
    local xPLayer = ESX.GetPlayerFromId(source)
    xPLayer.addInventoryItem('condom2', 1)
end)

RegisterNetEvent('condomcikart3')
AddEventHandler('condomcikart3', function()
    local xPLayer = ESX.GetPlayerFromId(source)
    xPLayer.addInventoryItem('condom3', 1)
end)
