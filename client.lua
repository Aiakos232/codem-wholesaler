
-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB

-- --- CODEM STORE --- https://discord.gg/DEzwFvtTBB


ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    blips()
end)

local display = false

RegisterNUICallback('escape',function(data)
    SetNuiFocus(false, false)
    display = false
end)



RegisterNUICallback('itemmiktar', function(data)
    satis(data.item, data.miktar, data.price)
end)






function satis(itemtype,itemamount, price)
    TriggerServerEvent('itemsell', itemtype,itemamount,price)
end 



local marker = vector3(39.03,-1005.459,29.48)
Citizen.CreateThread(function()
   
    while true do 
        local Wait = 1000
        local ped = PlayerPedId()
        local coords = GetEntityCoords(ped)
        local mesafe = #(marker - coords)
        
     
      
        if mesafe < 5.0 then
            Wait = 0
            ESX.Game.Utils.DrawText3D(marker + vector3(0.0, 0.0, 0.9), "[~g~E~s~] SELL", 0.6)
            if IsControlJustReleased(0, 38) then
                if not display then
                   
                    SetNuiFocus(true, true)
                    SendNUIMessage({
                        type = "ui"
                    })
                    display = true
          
            else
                SendNUIMessage({
                type = "close",
            })
            display = false
            end
            end
        else 
            Citizen.Wait(Wait)
        end
        Citizen.Wait(Wait)
    end
end)
function blips()
local blip = AddBlipForCoord(marker.x, marker.y, marker.z)
SetBlipSprite(blip, 207)
SetBlipDisplay(blip, 4)
SetBlipScale(blip, 0.7)
SetBlipColour(blip, 4)
SetBlipAsShortRange(blip, true)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString('Wholesaler')
EndTextCommandSetBlipName(blip)	
end