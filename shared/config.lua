Config = {}
Dependencies = {}

-- [[ Script Settings ]] --
Dependencies.Shop = "inventory"

-- [[ Item ]] --
Config.Item = "purple_usb"

-- [[ Bar Items ]] --
Config.Items = { -- Items found in the ambulance shop for players with the ambulance job to purchase
    label = "Cyberbar Stash",
    slots = 30,
    items = {
        [1] = { name = "jagermeister", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 1, },
        [2] = { name = "limesoda", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 2, },

        [3] = { name = "liptontea", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 3, },
        [4] = { name = "water_bottle", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 4, },
        [5] = { name = "sugar", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 5, },
        [6] = { name = "boba", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 6, },
        [7] = { name = "milk", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 7, },
        [8] = { name = "lime", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 8, },
        [9] = { name = "orange", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 9, },
        [10] = { name = "strawberry", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 10, },
        [11] = { name = "blueberry", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 11, },

        [12] = { name = "mioberrypome", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 12, },
        [13] = { name = "mioblackcherry", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 13, },
        [14] = { name = "mioblue", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 14, },
        [15] = { name = "miorange", price = 0, amount = math.random(50, 100), info = {}, type = "item", slot = 15, },
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