-- [[ PolyZones ]] --
RegisterNetEvent("StartZones:LENT:Cyberbar", function()
    for k, v in pairs(Zones.PZ) do
        exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], {
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
            distance = 3.5
        })
    end

    for k, v in pairs(Zones.Bar) do
        exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], {
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
            distance = 3.5
        })
    end

    for k, v in pairs(Zones.Stash) do
        exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], {
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
                    },
                },
            distance = 3.5
        })
    end

    if Objectives.HeistStart then
        for k, v in pairs(Zones.PC) do
            exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], {
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
                        },
                    },
                distance = 3.5
            })
        end
    end

    if Objectives.PCToggle then
        for k, v in pairs(Zones.StealAble) do
            exports['qb-target']:AddBoxZone(v["name"], v["coords"], v["height"], v["width"], {
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
                        },
                    },
                distance = 3.5
            })
        end
    end
end)