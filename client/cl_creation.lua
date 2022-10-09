local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:POUR:DRINK", function(data)
    local item = data.item

    QBCore.Functions.Progressbar('creating_drink', 'Pouring ' .. item.name, math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items[item.name], "add")
        TriggerServerEvent("LENT:SERVER:AL:CREATE:POUR", item.name)
    end, function() -- Play When Cancel
        QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
    end)
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:Promethean", function()
    if QBCore.Functions.HasItem('jagermeister') and QBCore.Functions.HasItem('gin') and QBCore.Functions.HasItem('miorange') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["jagermeister"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gin"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["miorange"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_promethean"], "add")
            TriggerServerEvent("LENT:SERVER:AL:Promethean")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:RAMPANCY", function()
    if QBCore.Functions.HasItem('chambord') and QBCore.Functions.HasItem('grenadine') and QBCore.Functions.HasItem('alize') and QBCore.Functions.HasItem('cb_pinkvodka') and QBCore.Functions.HasItem('cb_aftershock') and QBCore.Functions.HasItem('cb_rasgingerale') and QBCore.Functions.HasItem('mioblackcherry') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["chambord"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["grenadine"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["alize"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_pinkvodka"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_aftershock"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_rasgingerale"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mioblackcherry"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_rampancy"], "add")
            TriggerServerEvent("LENT:SERVER:AL:RAMPANCY")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:DIDACT", function()
    if QBCore.Functions.HasItem('jagermeister') and QBCore.Functions.HasItem('gin') and QBCore.Functions.HasItem('cb_bacardi') and QBCore.Functions.HasItem('miorange') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["jagermeister"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gin"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_bacardi"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["miorange"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_didact"], "add")
            TriggerServerEvent("LENT:SERVER:AL:DIDACT")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:COVENANT", function()
    if QBCore.Functions.HasItem('cb_grapevodka') and QBCore.Functions.HasItem('cb_rasgingerale') and QBCore.Functions.HasItem('cb_hpnotiq') and QBCore.Functions.HasItem('cb_pinkvodka') and QBCore.Functions.HasItem('mioberrypome') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_grapevodka"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_rasgingerale"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_hpnotiq"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_pinkvodka"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mioberrypome"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_covenant"], "add")
            TriggerServerEvent("LENT:SERVER:AL:COVENANT")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:CORTANA", function()
    if QBCore.Functions.HasItem('cb_bluecuracao') and QBCore.Functions.HasItem('cb_alizebleu') and QBCore.Functions.HasItem('cb_bluevodka') and QBCore.Functions.HasItem('mioblue') and QBCore.Functions.HasItem('limesoda') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_bluecuracao"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_alizebleu"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_bluevodka"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mioblue"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["limesoda"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_cortana"], "add")
            TriggerServerEvent("LENT:SERVER:AL:CORTANA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:MASTERCHIEF", function()
    if QBCore.Functions.HasItem('cb_midori') and QBCore.Functions.HasItem('jackdaniels') and QBCore.Functions.HasItem('jagermeister') and QBCore.Functions.HasItem('limesoda') and QBCore.Functions.HasItem('miorange') and QBCore.Functions.HasItem('mioblue') then
        QBCore.Functions.Progressbar('creating_drink', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_midori"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["jackdaniels"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["jagermeister"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["limesoda"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["miorange"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mioblue"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cb_masterchief"], "add")
            TriggerServerEvent("LENT:SERVER:AL:MASTERCHIEF")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

--- Hot Stuff
RegisterNetEvent("LENT:OPENMENU:HOT:BLACKTEA", function()
    if QBCore.Functions.HasItem('liptontea') and QBCore.Functions.HasItem('water_bottle') then
        QBCore.Functions.Progressbar('creating_tea', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["liptontea"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["water_bottle"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blacktea"], "add")
            TriggerServerEvent("LENT:SERVER:HOT:BLACKTEA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:HOT:GREENBOBA", function()
    if QBCore.Functions.HasItem('blacktea') and QBCore.Functions.HasItem('sugar') and QBCore.Functions.HasItem('boba') and QBCore.Functions.HasItem('milk') and QBCore.Functions.HasItem('lime')then
        QBCore.Functions.Progressbar('creating_tea', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blacktea"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["boba"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["milk"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lime"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["greenbobatea"], "add")
            TriggerServerEvent("LENT:SERVER:HOT:GREENBOBA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:HOT:ORANGEBOBA", function()
    if QBCore.Functions.HasItem('blacktea') and QBCore.Functions.HasItem('sugar') and QBCore.Functions.HasItem('boba') and QBCore.Functions.HasItem('milk') and QBCore.Functions.HasItem('orange')then
            QBCore.Functions.Progressbar('creating_tea', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blacktea"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["boba"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["milk"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["orange"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["orangebobatea"], "add")
            TriggerServerEvent("LENT:SERVER:HOT:ORANGEBOBA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:HOT:PINKBOBA", function()
    if QBCore.Functions.HasItem('blacktea') and QBCore.Functions.HasItem('sugar') and QBCore.Functions.HasItem('boba') and QBCore.Functions.HasItem('milk') and QBCore.Functions.HasItem('strawberry')then
        QBCore.Functions.Progressbar('creating_tea', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blacktea"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["boba"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["milk"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["strawberry"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pinkbobatea"], "add")
            TriggerServerEvent("LENT:SERVER:HOT:PINKBOBA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)

RegisterNetEvent("LENT:OPENMENU:HOT:PURPLEBOBA", function()
    if QBCore.Functions.HasItem('blacktea') and QBCore.Functions.HasItem('sugar') and QBCore.Functions.HasItem('boba') and QBCore.Functions.HasItem('milk') and QBCore.Functions.HasItem('blueberry')then
        QBCore.Functions.Progressbar('creating_tea', 'Making Black Tea', math.random(Config.ProductCreateMin, Config.ProductCreateMax), false, false, { -- Name | Label | Time | useWhileDead | canCancel
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
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blacktea"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["sugar"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["boba"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["milk"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["blueberry"], "remove")
            TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["purplebobatea"], "add")
            TriggerServerEvent("LENT:SERVER:HOT:PURPLEBOBA")
        end, function() -- Play When Cancel
            QBCore.Functions.Notify('Cancalled Action', 'error', 5000)
        end)
    else
        QBCore.Functions.Notify("You don't have the required items!", 'error', 5000)
    end
end)
