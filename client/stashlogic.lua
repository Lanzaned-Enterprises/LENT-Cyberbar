local QBCore = exports['qb-core']:GetCoreObject()

Stash = {}
Stash.Zone = { -- LENT:CYBERBAR:STASH
    ["storageStash"] = {
        ["name"] = "storageStash",
        ["coords"] = vector3(338.6, -908.5, 29.26),
        ["height"] = 0.9,
        ["width"] = 1.2,
        ["heading"] = 1,
        ["debug"] = false,
        ["minZ"] = 25.61,
        ["maxZ"] = 29.01,
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:STASH",
        ["icon"] = "fa-solid fa-box",
        ["label"] = "Product Storage",

        ["stashname"] = "Cyberbar Storage",

        ["jobrequired"] = true,
        ["requirecid"] = false,
        ["gangrequired"] = false,

        ["gang"] = "",
        ["job"] = "cyberbar",
        ["cid"] = {""},
        ["stashSize"] = 1250000,
        ["stashSlots"] = 50,
    },
}

RegisterNetEvent('LENT:CYBERBAR:STASH', function()

    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    local PlayerGang = PlayerData.gang.name
    local canOpen = false

    for k, v in pairs(Stash.Zone) do
        if Config.PoliceCanOpen then 
            if PlayerJob == "police" then
                canOpen = true
            end
        end
    
        if v["jobrequired"] then 
            if PlayerJob == v["job"] then
                canOpen = true
            end
        end
    
        if v["requirecid"] then
            for k, v in pairs (v["cid"]) do 
                if QBCore.Functions.GetPlayerData().citizenid == v then
                    canOpen = true
                end
            end
        end
    
        if v["gangrequired"] then
            if PlayerGang == v["gang"] then
                canOpen = true
            end
        end
    
        if canOpen then 
            TriggerServerEvent("inventory:server:OpenInventory", "stash", v["stashname"], { 
                maxweight = v["stashSize"], 
                slots = v["stashSlots"]
            })
            TriggerEvent("inventory:client:SetCurrentStash", v["stashname"])
        else
            QBCore.Functions.Notify('You cannot open this', 'error')
        end
    end
end)