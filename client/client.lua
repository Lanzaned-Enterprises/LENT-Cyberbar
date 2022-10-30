local QBCore = exports['qb-core']:GetCoreObject()

cyberbarlocation = {}
blipCreated = false
zoneCreated = false

CreateThread(function()
    if not zoneCreated then
        TriggerEvent("StartZones:LENT:Cyberbar")
    end
    zoneCreated = true

    if Config.BlipToggle then
        if not blipCreated then
            createBlip()
        end
        blipCreated = true
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