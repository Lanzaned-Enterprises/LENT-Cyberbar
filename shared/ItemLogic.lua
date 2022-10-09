local QBCore = exports['qb-core']:GetCoreObject()

qbMenu = {}
qbMenu.ItemsListPourable = {
    ["Alize"] = {
        ["Header"] = "Alize",
        ["SubTitle"] = "Alizé Wild Passion",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["alize"],
    },
    
    ["cb_alizebleu"] = {
        ["Header"] = "Alize",
        ["SubTitle"] = "Alizé Bleu Passion",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_alizebleu"],
    },

    ["cb_aftershock"] = {
        ["Header"] = "After Shock",
        ["SubTitle"] = "After Shock",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_aftershock"],
    },

    ["cb_bacardi"] = {
        ["Header"] = "Bacardi",
        ["SubTitle"] = "Bacardi 151",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_bacardi"],
    },

    ["cb_bluecuracao"] = {
        ["Header"] = "Curacao",
        ["SubTitle"] = "Blue Curacao",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_bluecuracao"],
    },

    ["cb_bluevodka"] = {
        ["Header"] = "Blue Vodka",
        ["SubTitle"] = "UV Blue Vodka",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_bluevodka"],
    },

    ["cb_grapevodka"] = {
        ["Header"] = "Grape Vodka",
        ["SubTitle"] = "UV Grape Vodka",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_grapevodka"],
    },

    ["cb_hpnotiq"] = {
        ["Header"] = "Hpnotiq Harmonie",
        ["SubTitle"] = "Hpnotiq Harmonie",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_hpnotiq"],
    },

    ["cb_midori"] = {
        ["Header"] = "Midori",
        ["SubTitle"] = "Midori",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_midori"],
    },

    ["cb_pinkvodka"] = {
        ["Header"] = "Pink Vodka",
        ["SubTitle"] = "UV Pink Lemonade Vodka",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_pinkvodka"],
    },

    ["cb_rasgingerale"] = {
        ["Header"] = "Ginger Ale",
        ["SubTitle"] = "Raspberry Ginger Ale",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["cb_rasgingerale"],
    },

    ["chambord"] = {
        ["Header"] = "Chambord",
        ["SubTitle"] = "Chambord",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["chambord"],
    },

    ["gin"] = {
        ["Header"] = "Gin",
        ["SubTitle"] = "Gin",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["gin"],
    },

    ["grenadine"] = {
        ["Header"] = "Grenadine",
        ["SubTitle"] = "Grenadine",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["grenadine"],
    },

    ["jackdaniels"] = {
        ["Header"] = "Jack Daniels",
        ["SubTitle"] = "Jack Daniels",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["Item"] = QBCore.Shared.Items["jackdaniels"],
    },
}

qbMenu.ItemsListCreateable = {
    ["Promethean"] = {
        ["Header"] = "Promethean",
        ["SubTitle"] = "Required: Jager, Gin, Mio Orange",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["promethean"],
        ["Event"] = "LENT:OPENMENU:HOT:Promethean" -- Change the event aswell or it won't work. Not helping if this is changed.
    },

    ["cb_rampancy"] = {
        ["Header"] = "Rampancy",
        ["SubTitle"] = "Required: Chambord, Grenadine, Alize Wild Passion, UV Pink Lemonade Vodka, After Shock, Raspberry Ginger Ale, Black Cherry Mio",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["cb_rampancy"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:RAMPANCY" -- Change the event aswell or it won't work. Not helping if this is changed.
    },

    ["cb_didact"] = {
        ["Header"] = "Didact",
        ["SubTitle"] = "Required: Jager, Gin, Bacardi 151, Mio Orange",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["cb_didact"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:DIDACT" -- Change the event aswell or it won't work. Not helping if this is changed.
    },

    ["cb_covenant"] = {
        ["Header"] = "Covenant",
        ["SubTitle"] = "Required: UV Grape Vodka, Raspberry Ginger Ale, Hpnotiq Harmonie, UV Pink Lemonade Vodka, Berry Pomegranate Mio",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["cb_covenant"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:COVENANT" -- Change the event aswell or it won't work. Not helping if this is changed.
    },

    ["cb_cortana"] = {
        ["Header"] = "Cortana",
        ["SubTitle"] = "Required: Blue Curacao, Alize Bleu Passion, UV Blue Vodka, Blueberry Lemonade Mio, Lemon Lime Soda",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["cb_cortana"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:CORTANA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },

    ["cb_masterchief"] = {
        ["Header"] = "Master Chief",
        ["SubTitle"] = "Required: Midori, Jack Daniels, Jager, Lemon Lime Soda, Orange Mio, Blue Mio",
        ["Icon"] = "fa-solid fa-beer-mug-empty",
        ["ItemAdd"] = QBCore.Shared.Items["cb_masterchief"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:MASTERCHIEF" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
}

qbMenu.NonAlHotItems = {
    ["blacktea"] = {
        ["Header"] = "Black Tea",
        ["SubTitle"] = "Requires: liptontea, water",
        ["Icon"] = "fa-solid fa-mug-hot",
        ["ItemAdd"] = QBCore.Shared.Items["blacktea"],
        ["Event"] = "LENT:OPENMENU:ALCOHOLIC:BLACKTEA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
    ["greenbobatea"] = {
        ["Header"] = "Green Boba Tea",
        ["SubTitle"] = "Requires: Black Tea, Sugar, Boba, Milk, Lime",
        ["Icon"] = "fa-solid fa-mug-hot",
        ["ItemAdd"] = QBCore.Shared.Items["greenbobatea"],
        ["Event"] = "LENT:OPENMENU:HOT:GREENBOBA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
    ["orangebobatea"] = {
        ["Header"] = "Orange Boba Tea",
        ["SubTitle"] = "Requires: Black Tea, Sugar, Boba, Milk, Orange",
        ["Icon"] = "fa-solid fa-mug-hot",
        ["ItemAdd"] = QBCore.Shared.Items["orangebobatea"],
        ["Event"] = "LENT:OPENMENU:HOT:ORANGEBOBA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
    ["pinkbobatea"] = {
        ["Header"] = "Pink Boba Tea",
        ["SubTitle"] = "Requires: Black Tea, Sugar, Boba, Milk, Strawberry",
        ["Icon"] = "fa-solid fa-mug-hot",
        ["ItemAdd"] = QBCore.Shared.Items["pinkbobatea"],
        ["Event"] = "LENT:OPENMENU:HOT:PINKBOBA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
    ["purplebobatea"] = {
        ["Header"] = "Purple Boba Tea",
        ["SubTitle"] = "Requires: Black Tea, Sugar, Boba, Milk, Blueberry",
        ["Icon"] = "fa-solid fa-mug-hot",
        ["ItemAdd"] = QBCore.Shared.Items["purplebobatea"],
        ["Event"] = "LENT:OPENMENU:HOT:PURPLEBOBA" -- Change the event aswell or it won't work. Not helping if this is changed.
    },
}