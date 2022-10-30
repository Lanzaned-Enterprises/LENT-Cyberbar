Config = {}

-- [[ Blip Settings ]] --
Config.BlipToggle = true
Config.BlipID = 484 -- radar_pickup_ghost
Config.BlipColor = 61 -- Mulberry Pink
Config.BlipSize = 1.0

-- [[ Robbery Sector ]] --
Config.RequiredCops = 0
Config.RobberyPayout = math.random(15000, 20000)

-- [[ Item ]] --
Config.Item = "purple_usb"

-- [[ Bar Items ]] --
Config.Items = {
    label = "Cyberbar Stash",
    slots = 30,
    items = {
        [1] = { name = "jagermeister", amount = math.random(50, 100), info = {}, type = "item", slot = 1, },
        [2] = { name = "limesoda", amount = math.random(50, 100), info = {}, type = "item", slot = 2, },

        [3] = { name = "liptontea", amount = math.random(50, 100), info = {}, type = "item", slot = 3, },
        [4] = { name = "water_bottle", amount = math.random(50, 100), info = {}, type = "item", slot = 4, },
        [5] = { name = "sugar", amount = math.random(50, 100), info = {}, type = "item", slot = 5, },
        [6] = { name = "boba", amount = math.random(50, 100), info = {}, type = "item", slot = 6, },
        [7] = { name = "milk", amount = math.random(50, 100), info = {}, type = "item", slot = 7, },
        [8] = { name = "lime", amount = math.random(50, 100), info = {}, type = "item", slot = 8, },
        [9] = { name = "orange", amount = math.random(50, 100), info = {}, type = "item", slot = 9, },
        [10] = { name = "strawberry", amount = math.random(50, 100), info = {}, type = "item", slot = 10, },
        [11] = { name = "blueberry", amount = math.random(50, 100), info = {}, type = "item", slot = 11, },

        [12] = { name = "mioberrypome", amount = math.random(50, 100), info = {}, type = "item", slot = 12, },
        [13] = { name = "mioblackcherry", amount = math.random(50, 100), info = {}, type = "item", slot = 13, },
        [14] = { name = "mioblue", amount = math.random(50, 100), info = {}, type = "item", slot = 14, },
        [15] = { name = "miorange", amount = math.random(50, 100), info = {}, type = "item", slot = 15, },
    }
}

-- [[ Stash Logic ]] --
Config.PoliceCanOpen = false

-- [[ Progressbar ]] --
-- These are INT min and max time it COULD take
Config.ProgressBarMin = 5000
Config.ProgressBarMax = 8400

Config.ProductCreateMin = 2500
Config.ProductCreateMax = 6000

-- [[ Discord ]] --
Config.OnDutyMessage = "Has gone onduty."
Config.OffDutyMessage = "Has gone offduty."

Config.DISCORD_WEBHOOK = ""
Config.DISCORD_NAME = "LENT - Cyberbar"
Config.DISCORD_IMAGE = "https://cdn.discordapp.com/attachments/1026175982509506650/1026176123928842270/Lanzaned.png"