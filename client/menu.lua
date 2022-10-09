local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("LENT:CYBERBAR:OPENTAP", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        exports["qb-menu"]:openMenu({
            {
                header = "Cyberbar Tap",
                icon = "fa-solid fa-faucet",
                isMenuHeader = true,
            },
            {
                header = "Alcoholic Beverages",
                -- txt = "",
                icon = "fa-solid fa-beer-mug-empty",
                params = {
                    event = "LENT:OPENMENU:ALCOHOLIC",
                }
            },
            {
                header = "Hot Beverages",
                -- txt = "",
                icon = "fa-solid fa-mug-hot",
                params = {
                    event = "LENT:OPENMENU:HOT",
                }
            }
        })
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        exports["qb-menu"]:openMenu({
            {
                header = "Alcoholic Beverages",
                icon = "fa-solid fa-faucet",
                isMenuHeader = true,
            },
            {
                header = "Pourable Drinks",
                txt = "Drinks directly poured from the tap!",
                icon = "fa-solid fa-beer-mug-empty",
                params = {
                    event = "LENT:OPENMENU:ALCOHOLIC:POUR",
                },
            },
            {
                header = "Creatable Drinks",
                txt = "Drinks that require special ingredients!",
                icon = "fa-solid fa-beer-mug-empty",
                params = {
                    event = "LENT:OPENMENU:ALCOHOLIC:CREATE",
                },
            },
            {
                header = "< Back",
                txt = "Returns to previous Menu",
                icon = "fa-solid fa-faucet",
                params = {
                    event = "LENT:CYBERBAR:OPENTAP",
                }
            }
        })
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:POUR", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        
        local itemList = {} -- Create a empty table
        
        itemList[#itemList + 1] = { -- Add our table
            isMenuHeader = true, -- Create non clickable menu
            header = 'Alcoholic Beverages',
            icon = 'fa-solid fa-faucet'
        }

        for k, v in pairs(qbMenu.ItemsListPourable) do
            itemList[#itemList + 1] = {
                header = v["Header"], 
                txt = v["SubTitle"],
                icon = v["Icon"],
                params = {
                    event = 'LENT:OPENMENU:ALCOHOLIC:POUR:DRINK',
                    args = {
                        item = v["Item"], 
                    }
                }
            }
        end -- The function above is adding the option to the table
        
        exports['qb-menu']:openMenu(itemList) -- show our table
    end
end)

RegisterNetEvent("LENT:OPENMENU:ALCOHOLIC:CREATE", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        local itemList = {} -- Create a empty table
        
        itemList[#itemList + 1] = { -- Add our table
            isMenuHeader = true, -- Create non clickable menu
            header = 'Alcoholic Beverages',
            icon = 'fa-solid fa-faucet'
        }

        for k, v in pairs(qbMenu.ItemsListCreateable) do
            itemList[#itemList + 1] = {
                header = v["Header"], 
                txt = v["SubTitle"],
                icon = v["Icon"],
                params = {
                    event = v["Event"],
                }
            }
        end -- The function above is adding the option to the table
        
        exports['qb-menu']:openMenu(itemList) -- show our table
    end
end)

RegisterNetEvent("LENT:OPENMENU:HOT", function()
    if QBCore.Functions.GetPlayerData().job.name == "cyberbar" then
        local itemList = {} -- Create a empty table
        
        itemList[#itemList + 1] = { -- Add our table
            isMenuHeader = true, -- Create non clickable menu
            header = 'Hot Beverages',
            icon = 'fa-solid fa-mug-hot'
        }

        for k, v in pairs(qbMenu.NonAlHotItems) do
            itemList[#itemList + 1] = {
                header = v["Header"], 
                txt = v["SubTitle"],
                icon = v["Icon"],
                params = {
                    event = v["Event"],
                }
            }
        end -- The function above is adding the option to the table
        
        exports['qb-menu']:openMenu(itemList) -- show our table
    end
end)
