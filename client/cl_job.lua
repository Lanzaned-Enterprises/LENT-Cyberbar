local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}
onDuty = false

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
    onDuty = player.job.onduty
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    onDuty = false
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    if JobInfo.name == "cyberbar" and PlayerJob.name ~= "cyberbar" then
        if JobInfo.onduty then
            TriggerServerEvent("QBCore:ToggleDuty")
            onDuty = false
        end
    end
    PlayerJob = JobInfo
end)

RegisterNetEvent("LENT:CYBERBAR:DUTY:TOGGLE", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        TriggerServerEvent("QBCore:ToggleDuty")
        TriggerServerEvent("LENT:CYBERBAR:DUTY:LOG")
    else
        QBCore.Functions.Notify('You are not part of this job', 'error', 5000) -- < Somehow prevent this being exploited
    end
end)

-- [[ Payment ]] --
RegisterNetEvent("LENT:CYBERBAR:CREATE:INVOICE", function()
    -- TriggerServerEvent("LENT:CYBERBAR:SERVER:CREATE:INVOICE", playerId, amount)
end)

-- [[ Stash ]] --
RegisterNetEvent("LENT:CYBERBAR:OPEN:INGREDIENTS", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        TriggerServerEvent("inventory:server:OpenInventory", "lent", "cyberbar", Config.Items)
    end
end)