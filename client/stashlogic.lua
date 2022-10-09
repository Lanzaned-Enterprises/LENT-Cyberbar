local QBCore = exports['qb-core']:GetCoreObject()


RegisterNetEvent('LENT:CYBERBAR:STASH', function()

    local PlayerData = QBCore.Functions.GetPlayerData()
    local PlayerJob = PlayerData.job.name
    local PlayerGang = PlayerData.gang.name
    local canOpen = false

    for k, v in pairs(Zones.Stash) do
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