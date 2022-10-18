local QBCore = exports['qb-core']:GetCoreObject()

cyberbarlocation = {}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        TriggerEvent("StartZones:LENT:Cyberbar")
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then

        removeBlip()

        for k, v in pairs(Zones.Bar) do
            exports["qb-target"]:RemoveZone(v["name"])
        end
        
        for k, v in pairs(Zones.PZ) do
            exports["qb-target"]:RemoveZone(v["name"])
        end

        for k, v in pairs(Zones.PC) do
            exports["qb-target"]:RemoveZone(v["name"])
        end

        for k, v in pairs(Zones.StealAble) do
            exports["qb-target"]:RemoveZone(v["name"])
        end

        for k, v in pairs(Zones.Stash) do
            exports["qb-target"]:RemoveZone(v["name"])
        end
    end
end)

-- [[ QBCore ]] --
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    if Config.BlipToggle then
        createBlip()
    end
end)

-- [[ Blip Function ]] --
function createBlip()
    local CyberBarBlip = AddBlipForCoord(340.99, -940.44, 29.41)
    SetBlipSprite(CyberBarBlip, Config.BlipID)
    SetBlipDisplay(CyberBarBlip, 3)
    SetBlipScale(CyberBarBlip, Config.BlipSize)
    SetBlipColour(CyberBarBlip, Config.BlipColor)
    SetBlipAlpha(CyberBarBlip, 256)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Cyberbar")
    EndTextCommandSetBlipName(CyberBarBlip)
    table.insert(cyberbarlocation, CyberBarBlip)
end

function removeBlip()
    for i, CyberBarBlip in pairs(cyberbarlocation) do
        RemoveBlip(CyberBarBlip)
    end
end