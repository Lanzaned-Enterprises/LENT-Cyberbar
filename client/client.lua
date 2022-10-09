local QBCore = exports['qb-core']:GetCoreObject()

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() == resourceName then
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
