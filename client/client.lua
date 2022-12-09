local QBCore = exports['qb-core']:GetCoreObject()

local CyberbarLocation = {}
local blipCreated = false

local ZoneSpawned = false 
local ZoneCreated = {}

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        DeleteZones()
        DeleteHeistZones()
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        DeleteZones()
        DeleteHeistZones()
        removeBlips()
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
    table.insert(CyberbarLocation, CyberBarBlip)
end

CreateThread(function()
    if not blipCreated then
        if Config.BlipToggle then
            if not blipCreated then
                createBlip()
            end
            blipCreated = true
        end
    end
    blipCreated = true
end)

function removeBlips()
    for i, CyberBarBlip in pairs(CyberbarLocation) do
        RemoveBlip(CyberBarBlip)
    end
end

local hasCreatedPolyZones = false
local Poly = {
    ["DutyLocation"] = {
        ["name"] = "CyberbarDutyLocation",
        ["coords"] = vector3(322.78, -927.15, 29.25),
        ["height"] = 1.8,
        ["width"] = 2.4,
        ["heading"] = 0,
        ["debug"] = false,
        ["minZ"] = 28.25,
        ["maxZ"] = 30.45,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:DUTY:TOGGLE",
        ["icon"] = "fa-solid fa-clipboard",
        ["label"] = "Toggle Duty",
        ["job"] = "cyberbar", -- < Job required to use target
    },
    ["Register"] = {
        ["name"] = "Register",
        ["coords"] = vector3(333.55, -914.11, 29.26),
        ["height"] = 0.4,
        ["width"] = 0.45,
        ["heading"] = 2,
        ["debug"] = false,
        ["minZ"] = 29.01,
        ["maxZ"] = 29.41,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:CREATE:INVOICE",
        ["icon"] = "fa-solid fa-clipboard",
        ["label"] = "Request Payment",
        ["job"] = "cyberbar", -- < Job required to use target
    },
    ["drinkingtap"] = {
        ["name"] = "drinkingtap",
        ["coords"] = vector3(333.43, -909.71, 29.26),
        ["height"] = 1.85,
        ["width"] = 0.55,
        ["heading"] = 359,
        ["debug"] = false,
        ["minZ"] = 28.96,
        ["maxZ"] = 30.11,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:OPENTAP",
        ["icon"] = "fa-solid fa-faucet",
        ["label"] = "Drinking Tap",
        ["job"] = "cyberbar",
    },
    ["drinkingtap2"] = {
        ["name"] = "drinkingtap2",
        ["coords"] = vector3(338.68, -911.39, 29.26),
        ["height"] = 1.8,
        ["width"] = 1,
        ["heading"] = 359,
        ["debug"] = false,
        ["minZ"] = 29.06,
        ["maxZ"] = 29.86,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:OPENTAP",
        ["icon"] = "fa-solid fa-faucet",
        ["label"] = "Drinking Tap",
        ["job"] = "cyberbar",
    },
    ["ingredientsstash"] = {
        ["name"] = "ingredientsstash",
        ["coords"] = vector3(335.89, -915.62, 29.26),
        ["height"] = 0.2,
        ["width"] = 0.5,
        ["heading"] = 359,
        ["debug"] = false,
        ["minZ"] = 28.36,
        ["maxZ"] = 28.96,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:OPEN:INGREDIENTS",
        ["icon"] = "fa-solid fa-box",
        ["label"] = "Ingredients Storage",
        ["job"] = "cyberbar",
    },
}

-- [[ PolyZones ]] --
CreateThread(function()
    if not hasCreatedPolyZones then
        for k, v in pairs(Poly) do
            if ZoneSpawned then
                return
            end
    
            for k, v in pairs(Poly) do
                if not ZoneCreated[k] then
                    ZoneCreated[k] = {}
                end
    
                ZoneCreated[k] = exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], { 
                    name = v["name"],
                    heading = v["heading"],
                    debugPoly = v["debug"],
                    minZ = v["minZ"],
                    maxZ = v["maxZ"],
                }, { 
                    options = { 
                        {
                            type = v["type"],
                            event = v["event"],
                            icon = v["icon"],
                            label = v["label"], 
                            job = v["job"],
                        },
                    },
                    distance = v["distance"]
                })  
                print("Created: " .. k)
            end
    
            ZoneSpawned = true
        end
    end
end)

function DeleteZones()
    if ZoneSpawned then
        for k, v in pairs(ZoneCreated) do
            print("Deleted: " .. k .. " Removing: " .. v["name"])
            exports['qb-target']:RemoveZone(k)
            exports['qb-target']:RemoveZone(v["name"])
        end
    end
end