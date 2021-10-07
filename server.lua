
-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB


ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)




RegisterServerEvent('itemsell')
AddEventHandler('itemsell', function(itemtype,itemamount,price)
    local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
    local para = itemamount * price

     if xPlayer.getInventoryItem(itemtype)['count'] >= itemamount then
            xPlayer.removeInventoryItem(itemtype , itemamount)
            xPlayer.addMoney(itemamount * price)
            TriggerClientEvent('esx:showNotification', src,'$' ..para..' you got' )
    else
        TriggerClientEvent('esx:showNotification', src, 'Not Enough')
    end
end)


