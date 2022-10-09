local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:1", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "1" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:1")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:1", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "1" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:1")
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:2", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "2" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:2")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:2", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "2" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:2")
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:3", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "3" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:3")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:3", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "3" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:3")
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:4", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "4" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:4")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:4", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "4" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:4")
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:5", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "5" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:5")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:5", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "5" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:5")
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:GRAB:WEAPON:6", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "6" then
            if v["taken"] then
                print("Weapon is taken")
                QBCore.Functions.Notify('This weapon has already been taken.', 'error', 2500)
            elseif not v["taken"] then
                print("Weapon is NOT taken")
                QBCore.Functions.Progressbar('takeweapon', 'Taking Weapon', math.random(Config.ProgressBarMin, Config.ProgressBarMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {
                    animDict = 'mini@repair',
                    anim = 'fixing_a_player',
                    flags = 49,
                }, {}, {}, function() -- Play When Done
                    StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
                    TriggerEvent("LENT:CYBERBAR:SUCCESS:WEAPON:6")
                    v["taken"] = true
                    -- exports["qb-target"]:AllowTargeting(false) << Don't use this
                end, function() -- Play When Cancel
                    QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
                end)
            end
        end
    end
end)

RegisterNetEvent("LENT:CYBERBAR:SUCCESS:WEAPON:6", function()
    for k, v in pairs(Zones.StealAble) do
        if v["value"] == "6" then
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[v["itemName"]], "add")
            TriggerServerEvent("LENT:CYBERBAR:GIVE:WEAPON:6")
        end
    end
end)