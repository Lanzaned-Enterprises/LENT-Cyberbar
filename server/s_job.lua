local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("LENT:SERVER:AL:CREATE:POUR", function(itemname)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.AddItem(itemname)
end)

RegisterServerEvent("LENT:SERVER:AL:Promethean", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("jagermeister")
    Player.Functions.RemoveItem("gin")
    Player.Functions.RemoveItem("miorange")
    Player.Functions.AddItem("cb_promethean")
end)

RegisterServerEvent("LENT:SERVER:AL:RAMPANCY", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("chambord")
    Player.Functions.RemoveItem("grenadine")
    Player.Functions.RemoveItem("alize")
    Player.Functions.RemoveItem("cb_pinkvodka")
    Player.Functions.RemoveItem("cb_aftershock")
    Player.Functions.RemoveItem("cb_rasgingerale")
    Player.Functions.RemoveItem("mioblackcherry")
    Player.Functions.AddItem("cb_rampancy")
end)

RegisterServerEvent("LENT:SERVER:AL:DIDACT", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("jagermeister")
    Player.Functions.RemoveItem("gin")
    Player.Functions.RemoveItem("cb_bacardi")
    Player.Functions.RemoveItem("miorange")
    Player.Functions.AddItem("cb_didact")
end)

RegisterServerEvent("LENT:SERVER:AL:COVENANT", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("cb_grapevodka")
    Player.Functions.RemoveItem("cb_rasgingerale")
    Player.Functions.RemoveItem("cb_hpnotiq")
    Player.Functions.RemoveItem("cb_pinkvodka")
    Player.Functions.RemoveItem("mioberrypome")
    Player.Functions.AddItem("cb_promethean")
end)

RegisterServerEvent("LENT:SERVER:AL:CORTANA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("cb_bluecuracao")
    Player.Functions.RemoveItem("cb_alizebleu")
    Player.Functions.RemoveItem("cb_bluevodka")
    Player.Functions.RemoveItem("mioblue")
    Player.Functions.RemoveItem("limesoda")
    Player.Functions.AddItem("cb_cortana")
end)

RegisterServerEvent("LENT:SERVER:AL:MASTERCHIEF", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("cb_midori")
    Player.Functions.RemoveItem("jackdaniels")
    Player.Functions.RemoveItem("gin")
    Player.Functions.RemoveItem("jagermeister")
    Player.Functions.RemoveItem("limesoda")
    Player.Functions.RemoveItem("miorange")
    Player.Functions.RemoveItem("mioblue")
    Player.Functions.AddItem("cb_masterchief")
end)

--- Hot Stuff
RegisterServerEvent("LENT:SERVER:HOT:BLACKTEA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("liptontea")
    Player.Functions.RemoveItem("water_bottle")
    Player.Functions.AddItem("blacktea")
end)

RegisterServerEvent("LENT:SERVER:HOT:GREENBOBA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("blacktea")
    Player.Functions.RemoveItem("sugar")
    Player.Functions.RemoveItem("boba")
    Player.Functions.RemoveItem("milk")
    Player.Functions.RemoveItem("lime")
    Player.Functions.AddItem("greenbobatea")
end)

RegisterServerEvent("LENT:SERVER:HOT:ORANGEBOBA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("blacktea")
    Player.Functions.RemoveItem("sugar")
    Player.Functions.RemoveItem("boba")
    Player.Functions.RemoveItem("milk")
    Player.Functions.RemoveItem("orange")
    Player.Functions.AddItem("orangebobatea")
end)

RegisterServerEvent("LENT:SERVER:HOT:PINKBOBA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("blacktea")
    Player.Functions.RemoveItem("sugar")
    Player.Functions.RemoveItem("boba")
    Player.Functions.RemoveItem("milk")
    Player.Functions.RemoveItem("strawberry")
    Player.Functions.AddItem("pinkbobatea")
end)

RegisterServerEvent("LENT:SERVER:HOT:PURPLEBOBA", function()
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.RemoveItem("blacktea")
    Player.Functions.RemoveItem("sugar")
    Player.Functions.RemoveItem("boba")
    Player.Functions.RemoveItem("milk")
    Player.Functions.RemoveItem("blueberry")
    Player.Functions.AddItem("purplebobatea")
end)