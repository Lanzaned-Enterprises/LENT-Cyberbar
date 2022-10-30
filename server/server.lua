local QBCore = exports['qb-core']:GetCoreObject()

local cachedPoliceAmount = {}

QBCore.Functions.CreateCallback('LENT:SERVER:GETCOPS', function(source, cb)
	local amount = 0
    for _, v in pairs(QBCore.Functions.GetQBPlayers()) do
        if v.PlayerData.job.name == "police" and v.PlayerData.job.onduty then
            amount = amount + 1
        end
    end
    cachedPoliceAmount[source] = amount
    cb(amount)
end)

RegisterServerEvent("LENT:CYBERBAR:DUTY:LOG", function()
	local Player = QBCore.Functions.GetPlayer(source)

	if not Player then return end -- < Stops exploits with playerdata

	if Player.PlayerData.job.onduty then -- < 
		SendDiscordWebhook(4115735, "Offduty Log | " .. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. " ", Config.OnDutyMessage, "Script created by: https://discord.lanzaned.com")
	elseif not Player.PlayerData.job.onduty then
		SendDiscordWebhook(12255232, "Offduty Log | " .. Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname .. " ", Config.OffDutyMessage, "Script created by: https://discord.lanzaned.com")
	end
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:USB", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem(Config.Item, 1)
end)

RegisterServerEvent("LENT:CYBERBAR:PAYMENT", function()
	local Player = QBCore.Functions.GetPlayer(source)

	if not Player then return end -- < Stops exploits with playerdata

	Player.Functions.AddMoney('bank', Config.RobberyPayout, "Bay Hardware")
	Player.Functions.RemoveItem("sniper_rifle1")
	Player.Functions.RemoveItem("sniper_rifle2")
	Player.Functions.RemoveItem("sniper_rifle3")
	Player.Functions.RemoveItem("sniper_rifle4")
	Player.Functions.RemoveItem("sniper_rifle5")
	Player.Functions.RemoveItem("sniper_rifle6")
end)


-- [[ Items ]] --
RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:1", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle1", 1)
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:2", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle2", 1)
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:3", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle3", 1)
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:4", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle4", 1)
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:5", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle5", 1)
end)

RegisterServerEvent("LENT:CYBERBAR:GIVE:WEAPON:6", function()
	local Player = QBCore.Functions.GetPlayer(source)
	Player.Functions.AddItem("sniper_rifle6", 1)
end)

function SendDiscordWebhook(color, name, message, footer)
    local content = {
        {
            ["color"] = color,
            ["title"] = " " .. name .. " ",
            ["description"] = message,
            ["footer"] = {
                ["text"] = " " .. footer .. " ",
            },
        }
    }
    PerformHttpRequest(Config.DISCORD_WEBHOOK, function(err, text, headers) end, 
    'POST', json.encode({
        username = Config.DISCORD_NAME, 
        embeds = content, 
        avatar_url = Config.DISCORD_IMAGE
    }), { ['Content-Type'] = 'application/json '})
end