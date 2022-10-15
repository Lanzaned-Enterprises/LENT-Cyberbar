local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("LENT:TESTING", function()
    Objectives.HeistStart = true
	-- Objectives.PCToggle = true
end)

RegisterNetEvent("LENT:CYBERBAR:START", function()
    QBCore.Functions.TriggerCallback('LENT:SERVER:GETCOPS', function(cops)
        if cops >= Config.RequiredCops then
            if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
                return
            end

            if Objectives.HeistStart then 
                MissionText("~r~Hector: ~w~Get going! I don't have more for you!", 5000)
            else
                MissionText("~r~Hector: ~w~Here's the USB you will need for the Cyberbar Security", 5000)
                Objectives.HeistStart = true
                TriggerServerEvent("LENT:CYBERBAR:GIVE:USB")
            end
        else
            MissionText("~r~SYSTEM: ~w~There is to few cops online for this!", 5000)
        end
    end)
end)

RegisterNetEvent("LENT:CYBERBAR:FINISH", function()
    if Objectives.HeistStart then 
        if QBCore.Functions.HasItem('sniper_rifle1') and QBCore.Functions.HasItem('sniper_rifle2') and QBCore.Functions.HasItem('sniper_rifle3') and
            QBCore.Functions.HasItem('sniper_rifle4') and QBCore.Functions.HasItem('sniper_rifle5') and QBCore.Functions.HasItem('sniper_rifle6') then
            TriggerServerEvent("LENT:CYBERBAR:PAYMENT")
            Objectives.HeistStart = false
            Objectives.HeistCompleted = true
            MissionText("~r~Chris: ~w~Thanks man. Come back soon!", 5000)
        else
            MissionText("~r~Chris: ~w~I need all six guns man! I can't help you.", 5000)
        end
    else
        MissionText("~r~Chris: ~w~Can I do anything for you?", 5000)
    end
end)

RegisterNetEvent("LENT:CYBERBAR:HEIST:TOGGLE:SECURITY", function()
    exports['ps-ui']:Scrambler(function(success)
        if success then
            Objectives.PCToggle = true
            QBCore.Functions.Notify('Security Disabled', 'success', 2500)
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["purple_usb"], "remove")
        else
            exports["ps-dispatch"]:cyberBarRobbery()
        end
    end, "numeric", 30, 0) -- Type (alphabet, numeric, alphanumeric, greek, braille, runes), Time (Seconds), Mirrored (0: Normal, 1: Normal + Mirrored 2: Mirrored only )
end)