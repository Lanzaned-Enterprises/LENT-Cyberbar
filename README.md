# LENT-Cyberbar
*A job that serves as a heist at the same time. Allowing users to steal fake weapons to turn them into reality!*

## Dependencies
- Map: https://www.gta5-mods.com/maps/mlo-cyber-bar-fivem-sp
- qb-core
- qb-smallresources
- ps-dispatch
- ps-ui
- Progressbar
- PolyZone
- LENT-PedSpawner

## IMPORTANT:
- To install this resource a basic understanding of LUA is required.
- To make full use of the resource you should follow the `How To Install` step for step.
- Make Sure that you have all dependencies installed before hand.
- Make sure that `LENT-Cyberbar` is started after the dependencies.

## How to Install
- Add the following snippet to `qb-core/shared/jobs.lua`
```lua
    ['cyberbar'] = {
        label = "Cyber Bar",
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = "Trainee",
                payment = 0,
            },
            ['1'] = {
                name = "Bartender",
                payment = 0,
            },
            ['2'] = {
                name = "Dancer",
                payment = 0,
            },
            ['3'] = {
                name = "Manager",
                payment = 0,
                isBoss = true,
            },
            ['4'] = {
                name = "Owner",
                payment = 0,
                isBoss = true,
            },
        },
    },
```
- Add item snippet to `qb-core/shared/items.lua`
    - You wil have to change the `ammotype` tag as they are custom handled to my own liking.
    - This resource can be used with decay inventories.
```lua
	-- Cyber bar
	['purple_usb'] 			 	= {['name'] = 'purple_usb', 			['label'] = 'Purple USB', 					['weight'] = 0, 		['type'] = 'item', 		['image'] = 'purpleusb.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,   ['description'] = 'Sketchy USB.. Marked for Seizure'},
	['weapon_vandal']          	= {['name'] = 'weapon_vandal',         	['label'] = 'Vandal',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '762_ammo',      		['image'] = 'rifle6.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'A rapid-fire, magazine-fed automatic rifle designed for infantry use'},
	['weapon_awp']          	= {['name'] = 'weapon_awp',         	['label'] = 'L115A1',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '308_ammo',      		['image'] = 'rifle5.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'devastating powerful long-range weapon, with extreme accuracy and obscene stopping power'},
	['weapon_donut']          	= {['name'] = 'weapon_donut',         	['label'] = 'L115A1',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '308_ammo',      		['image'] = 'rifle2.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'devastating powerful long-range weapon, with extreme accuracy and obscene stopping power'},
	['weapon_fang']          	= {['name'] = 'weapon_fang',         	['label'] = 'L115A1',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '308_ammo',      		['image'] = 'rifle3.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'devastating powerful long-range weapon, with extreme accuracy and obscene stopping power'},
	['weapon_lynx']          	= {['name'] = 'weapon_lynx',         	['label'] = 'L115A1',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '308_ammo',      		['image'] = 'rifle4.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'devastating powerful long-range weapon, with extreme accuracy and obscene stopping power'},
	['weapon_rain']          	= {['name'] = 'weapon_rain',         	['label'] = 'L115A1',       				['weight'] = 7000,      ['type'] = 'weapon',    ['ammotype'] = '308_ammo',      		['image'] = 'rifle1.png',     			['unique'] = true,      ['useable'] = false,    ['description'] = 'devastating powerful long-range weapon, with extreme accuracy and obscene stopping power'},
	['sniper_rifle1'] 			= {['name'] = 'sniper_rifle1',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle1.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['sniper_rifle2'] 			= {['name'] = 'sniper_rifle2',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle2.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['sniper_rifle3'] 			= {['name'] = 'sniper_rifle3',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle3.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['sniper_rifle4'] 			= {['name'] = 'sniper_rifle4',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle4.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['sniper_rifle5'] 			= {['name'] = 'sniper_rifle5',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle5.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['sniper_rifle6'] 			= {['name'] = 'sniper_rifle6',			['label'] = 'Cyber Bar Rifle',				['weight'] = 7000,		['type'] = 'item',		['image'] = 'rifle6.png',				['unique'] = true,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 14.0,  ['description'] = 'Cyberbar Weapon... Marked for Seizure.'},
	['alize'] 		 			= {['name'] = 'alize', 	  				['label'] = 'Alizé Wild Passion', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'alize.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Alizé Wild Passion'},
	['bacon_cheese_fries'] 		= {['name'] = 'bacon_cheese_fries', 	['label'] = 'Bacon Cheese Fries', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bacon_cheese_fries.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A basket of Bacon Cheese Fries'},
	['bacon_pieces'] 		 	= {['name'] = 'bacon_pieces', 	  		['label'] = 'Bacon Pieces', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bacon_pieces.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Bacon bitties'},
	['basket_fries'] 		 	= {['name'] = 'basket_fries', 	  		['label'] = 'Basket of Fries', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'basket_fries.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A basket of Fries'},
	['blacktea'] 		 		= {['name'] = 'blacktea', 	  			['label'] = 'Black Tea', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'blacktea.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A cup of Black Tea'},
	['blueberry'] 		 		= {['name'] = 'blueberry', 	  			['label'] = 'Blueberries', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'blueberry.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Blueberries'},
	['boba'] 		 			= {['name'] = 'boba', 	  				['label'] = 'Boba Perals', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'boba.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Boba Perals'},
	['burgermeat'] 		 		= {['name'] = 'burgermeat', 	  		['label'] = 'Cooked Burger Patty', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'burgermeat.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Cooked Burger Meat'},
	['burgerpatty'] 		 	= {['name'] = 'burgerpatty', 	  		['label'] = 'Raw Burger Patty', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'burgerpatty.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Raw Burger Meat'},
	['cb_aftershock'] 		 	= {['name'] = 'cb_aftershock', 	  		['label'] = 'After Shock', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_aftershock.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of After Shock'},
	['cb_alizebleu'] 		 	= {['name'] = 'cb_alizebleu', 	  		['label'] = 'Alizé Bleu Passion', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_alizebleu.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Alizé Bleu Passion'},
	['cb_bacardi'] 		 		= {['name'] = 'cb_bacardi', 	  		['label'] = 'Bacardi 151', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bacardi.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Bacardi 151'},
	['cb_bacon_burger'] 		= {['name'] = 'cb_bacon_burger', 	  	['label'] = 'Bacon Cheeseburger', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bacon_burger.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Bacon Cheeseburger'},
	['cb_bluecuracao'] 		 	= {['name'] = 'cb_bluecuracao', 	  	['label'] = 'Blue Curacao', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bluecuracao.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Blue Curacao'},
	['cb_bluevodka'] 		 	= {['name'] = 'cb_bluevodka', 	  		['label'] = 'UV Blue Vodka', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bluevodka.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of UV Blue Vodka'},
	['cb_bronze'] 		 		= {['name'] = 'cb_bronze', 	  			['label'] = 'Bronze Membership Card', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_bronze.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Bronze Tier Membership Card to the CyberBar'},
	['cb_cheeseburger'] 		= {['name'] = 'cb_cheeseburger', 	  	['label'] = 'Cheeseburger', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_cheeseburger.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Cheeseburger'},
	['cb_cheesepizza'] 		 	= {['name'] = 'cb_cheesepizza', 	  	['label'] = 'Personal Cheese Pizza', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_cheesepizza.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Personal Cheese Pizza'},
	['cb_cortana'] 		 		= {['name'] = 'cb_cortana', 	  		['label'] = 'Cortana Mixed Drink', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_cortana.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Cortana Mixed Drink'},
	['cb_covenant'] 		 	= {['name'] = 'cb_covenant', 	  		['label'] = 'Covenant Mixed Drink', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_covenant.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Covenant Mixed Drink'},
	['cb_didact'] 		 		= {['name'] = 'cb_didact', 	  			['label'] = 'Didact Mixed Drink', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_didact.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Didact Mixed Drink'},
	['cb_gold'] 		 		= {['name'] = 'cb_gold', 	  			['label'] = 'Gold Membership Card', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_gold.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Gold Tier Membership Card to the CyberBar'},
	['cb_grapevodka'] 		 	= {['name'] = 'cb_grapevodka', 	  		['label'] = 'UV Grape Vodka', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_grapevodka.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of UV Grape Vodka'},
	['cb_hpnotiq'] 		 		= {['name'] = 'cb_hpnotiq', 	  		['label'] = 'Hpnotiq Harmonie', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_hpnotiq.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Hpnotiq Harmonie'},
	['cb_masterchief'] 		 	= {['name'] = 'cb_masterchief', 	  	['label'] = 'Master Chief Mixed Drink', 	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_masterchief.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Master Chief Mixed Drink'},
	['cb_midori'] 		 		= {['name'] = 'cb_midori', 	  			['label'] = 'Bottle of Midori', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_midori.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Midori'},
	['cb_peppizza'] 		 	= {['name'] = 'cb_peppizza', 	  		['label'] = 'Personal Pepperoni Pizza', 	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_peppizza.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Personal Pepperoni Pizza'},
	['cb_pinkvodka'] 		 	= {['name'] = 'cb_pinkvodka', 	  		['label'] = 'UV Pink Vodka', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_pinkvodka.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of UV Pink Vodka'},
	['cb_promethean'] 		 	= {['name'] = 'cb_promethean', 	  		['label'] = 'Promethean Mixed Drink', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_promethean.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Promethean Mixed Drink'},
	['cb_rampancy'] 		 	= {['name'] = 'cb_rampancy', 	  		['label'] = 'Rampancy Mixed Drink', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_rampancy.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Rampancy Mixed Drink'},
	['cb_rasgingerale'] 		= {['name'] = 'cb_rasgingerale', 	  	['label'] = 'Raspberry Ginger Ale', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_rasgingerale.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Raspberry Ginger Ale'},
	['cb_silver'] 		 		= {['name'] = 'cb_silver', 	  			['label'] = 'Silver Membership Card', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cb_silver.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Silver Membership Card to the CyberBar'},
	['chambord'] 		 		= {['name'] = 'chambord', 	  			['label'] = 'Bottle of Chambord', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'chambord.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Chambord'},
	['cheddar'] 		 		= {['name'] = 'cheddar', 	  			['label'] = 'Cheddar Cheese Slice', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cheddar.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Cheddar Cheese Slice'},
	['cheese_fries'] 		 	= {['name'] = 'cheese_fries', 	  		['label'] = 'Cheese Fries', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cheese_fries.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A basket of Cheese Fries'},
	['chicken_strips'] 		 	= {['name'] = 'chicken_strips', 	  	['label'] = 'Chicken Strips', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'chicken_strips.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A basket of Chicken Strips'},
	['chicken_strips_raw'] 		= {['name'] = 'chicken_strips_raw', 	['label'] = 'Raw Chicken Strips', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'chicken_strips_raw.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Raw Chicken Strips'},
	['chicken_wings_raw'] 		= {['name'] = 'chicken_wings_raw', 	  	['label'] = 'Raw Chicken Wings', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'chicken_wings_raw.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Raw Chicken Wings'},
	['gin'] 		 			= {['name'] = 'gin', 	  				['label'] = 'Bottle of Gin', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'gin.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Gin'},
	['undrinkable_gin'] 		= {['name'] = 'undrinkable_gin', 	  	['label'] = 'Bottle of Gin', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'gin.png', 					['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Gin'},
	['gratedcheese'] 		 	= {['name'] = 'gratedcheese', 	  		['label'] = 'Grated Cheese', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'gratedcheese.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Grated Cheese'},
	['greenbobatea'] 		 	= {['name'] = 'greenbobatea', 	  		['label'] = 'Green Boba Tea', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'greenbobatea.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Green Boba Tea'},
	['grenadine'] 		 		= {['name'] = 'grenadine', 	  			['label'] = 'Bottle of Grenadine', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'grenadine.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Grenadine'},
	['ice_cream'] 		 		= {['name'] = 'ice_cream', 	  			['label'] = 'Ice Cream', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'ice_cream.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A pint of Ice Cream'},
	['jackdaniels'] 		 	= {['name'] = 'jackdaniels', 	  		['label'] = 'Bottle of Jack Daniels', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'jackdaniels.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Jack Daniels'},
	['lime'] 		 			= {['name'] = 'lime', 	  				['label'] = 'Lime', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'lime.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A lime'},
	['limesoda'] 		 		= {['name'] = 'limesoda', 	  			['label'] = 'Bottle of Lime Soda', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'limesoda.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Lime Soda'},
	['liptontea'] 		 		= {['name'] = 'liptontea', 	  			['label'] = 'Box of Lipton Tea', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'liptontea.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A box of Lipton Tea'},
	['mioberrypome'] 		 	= {['name'] = 'mioberrypome', 	  		['label'] = 'Berry Pomegranate Mio', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mioberrypome.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Purple Mio'},
	['mioblackcherry'] 		 	= {['name'] = 'mioblackcherry', 	  	['label'] = 'Black Cherry Mio', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mioblackcherry.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Red Mio'},
	['mioblue'] 		 		= {['name'] = 'mioblue', 	  			['label'] = 'Blueberry Lemonade Mio', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mioblue.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Blue Mio'},
	['miorange'] 		 		= {['name'] = 'miorange', 	  			['label'] = 'Orange Mio', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'miorange.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Orange Mio'},
	['mochi'] 		 			= {['name'] = 'mochi', 	  				['label'] = 'Mochi Ice Cream', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mochi.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bow of Mochi Ice Cream'},
	['mochidough'] 		 		= {['name'] = 'mochidough', 	  		['label'] = 'Mochi Dough', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mochidough.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Mochi Dough'},
	['mochika'] 		 		= {['name'] = 'mochika', 	  			['label'] = 'Mochika Flour', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mochika.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Mochika Flour'},
	['mozzsticks'] 		 		= {['name'] = 'mozzsticks', 	  		['label'] = 'Mozzarella Sticks', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mozzsticks.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A plate of Mozzarella Sticks'},
	['noodlebowl'] 		 		= {['name'] = 'noodlebowl', 	  		['label'] = 'Bowl of Noodles', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'noodlebowl.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bowl of Noodles'},
	['noodles'] 		 		= {['name'] = 'noodles', 	  			['label'] = 'Noodles', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'noodles.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A brick of Noodles'},
	['orange'] 		 			= {['name'] = 'orange', 	  			['label'] = 'Orange', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'orange.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'An Orange'},
	['orangebobatea'] 		 	= {['name'] = 'orangebobatea', 	  		['label'] = 'Orange Boba Tea', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'orangebobatea.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Orange Boba Tea'},
	['pinkbobatea'] 		 	= {['name'] = 'pinkbobatea', 	  		['label'] = 'Pink Boba Tea', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pinkbobatea.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Pink Boba Tea'},
	['pizzarolls'] 		 		= {['name'] = 'pizzarolls', 	  		['label'] = 'Pizza Rolls', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pizzarolls.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A plate of Pizza Rolls'},
	['purplebobatea'] 		 	= {['name'] = 'purplebobatea', 	  		['label'] = 'Purple Boba Tea', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'purplebobatea.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Purple Boba Tea'},
	['rawmozzsticks'] 		 	= {['name'] = 'rawmozzsticks', 	  		['label'] = 'Raw Mozzarella Sticks', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rawmozzsticks.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Package of Mozzarella Sticks'},
	['rawpizzarolls'] 		 	= {['name'] = 'rawpizzarolls', 	  		['label'] = 'Raw Pizza Rolls', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'rawpizzarolls.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Package of Pizza Rolls'},
	['slicedpotato'] 		 	= {['name'] = 'slicedpotato', 	  		['label'] = 'Sliced Potatos', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'slicedpotato.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Sliced Potatos'},
	['strawberry'] 		 		= {['name'] = 'strawberry', 	  		['label'] = 'Strawberry', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'strawberry.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A Strawberry'},
	['sugar'] 		 			= {['name'] = 'sugar', 	  				['label'] = 'Sugar', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'sugar.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'Sugar.... Yes Please'},
	['wings'] 		 			= {['name'] = 'wings', 	  				['label'] = 'Wings', 						['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'wings.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A basket of Chicken Wings'},
	['milk'] 	 		 	 	= {['name'] = 'milk', 					['label'] = 'Bottle of Milk',  				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'milk.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Milk'},
	['jagermeister']           	= {['name'] = 'jagermeister',            ['label'] = 'Bottle of Jagermeister',      ['weight'] = 1000,      ['type'] = 'item',      ['image'] = 'jagermeister.png',         ['unique'] = false,     ['useable'] = true,     ['shouldClose'] = true,    ['combinable'] = nil,   ["decay"] = 7.0,   ['description'] = 'A bottle of Jagermeister'},
```
- Add images from `Images` to `inventory/html/images`
- Add the following to `qb-core/shared/weapons.lua`
```lua
	[`weapon_vandal`]          = {['name'] = 'weapon_vandal',          ['label'] = 'Vandal',                    ['ammotype'] = 'AMMO_RIFLE',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
    [`weapon_awp`]          		= {['name'] = 'weapon_awp',          	['label'] = 'L115A1',                    ['ammotype'] = 'AMMO_SNIPER',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
	[`weapon_donut`]          		= {['name'] = 'weapon_donut',          	['label'] = 'L115A1',                    ['ammotype'] = 'AMMO_SNIPER',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
	[`weapon_fang`]          		= {['name'] = 'weapon_fang',         	['label'] = 'L115A1',                    ['ammotype'] = 'AMMO_SNIPER',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
	[`weapon_lynx`]          		= {['name'] = 'weapon_lynx',         	['label'] = 'L115A1',                    ['ammotype'] = 'AMMO_SNIPER',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
	[`weapon_rain`]          		= {['name'] = 'weapon_rain',         	['label'] = 'L115A1',                    ['ammotype'] = 'AMMO_SNIPER',    ['damagereason'] = 'Ended / Rifled / Shot down / Floored'},
```
- Add the following to `qb-weapons/config.lua`
```lua
    ['weapon_vandal']           = 0.15,
    ['weapon_awp']              = 0.15,
    ['weapon_donut']            = 0.15,
    ['weapon_fang']             = 0.15,
    ['weapon_lynx']             = 0.15,
    ['weapon_rain']             = 0.15,
```
- Add the following to `qb-smallresources/config.lua`
```lua
-- ConsumablesEat

-- ConsumablesDrink
    ["blacktea"] = math.random(40, 50),
    ["greenbobatea"] = math.random(40, 50),
    ["orangebobatea"] = math.random(40, 50),
    ["pinkbobatea"] = math.random(40, 50),
    ["purplebobatea"] = math.random(40, 50),

-- ConsumablesAlcohol
    ["alize"] = math.random(20, 40),
    ["cb_aftershock"] = math.random(20, 40),
    ["cb_alizebleu"] = math.random(20, 40),
    ["cb_bacardi"] = math.random(20, 40),
    ["cb_bluecuracao"] = math.random(20, 40),
    ["cb_bluevodka"] = math.random(20, 40),
    ["cb_grapevodka"] = math.random(20, 40),
    ["cb_hpnotiq"] = math.random(20, 40),
    ["cb_midori"] = math.random(20, 40),
    ["cb_pinkvodka"] = math.random(20, 40),
    ["cb_rasgingerale"] = math.random(20, 40),
    ["chambord"] = math.random(20, 40),
    ["gin"] = math.random(20, 40),
    ["grenadine"] = math.random(20, 40),
    ["jackdaniels"] = math.random(20, 40),

    ["cb_promethean"] = math.random(20, 40),
    ["cb_promethean"] = math.random(20, 40),
    ["cb_rampancy"] = math.random(20, 40),
    ["cb_didact"] = math.random(20, 40),
    ["cb_covenant"] = math.random(20, 40),
    ["cb_cortana"] = math.random(20, 40),
    ["cb_masterchief"] = math.random(20, 40),
```
- Add the folowing 2 snippets to `ps-dispatch`
```lua
-- cl_events.lua
local function cyberBarRobbery()
    local currentPos = GetEntityCoords(PlayerPedId())
    local locationInfo = getStreetandZone(currentPos)
    local gender = GetPedGender()
    TriggerServerEvent("dispatch:server:notify",{
        dispatchcodename = "cyberBarRobbery", -- has to match the codes in sv_dispatchcodes.lua so that it generates the right blip
        dispatchCode = "10-68",
        firstStreet = locationInfo,
        gender = gender,
        model = nil,
        plate = nil,
        priority = 2, -- priority
        firstColor = nil,
        automaticGunfire = false,
        origin = {
            x = currentPos.x,
            y = currentPos.y,
            z = currentPos.z
        },
        dispatchMessage = 'Attempted Robbery', -- message
        job = {"police", "bcso", "doc"} -- jobs that will get the alerts
    })
end exports('cyberBarRobbery', cyberBarRobbery)
```
```lua
-- sv_dispatchcodes.lua
	["nightclubRobbery"] = {displayCode = '10-68', description = "Attempted Robbery", radius = 0, recipientList = {'police', 'bcso', 'doc'}, blipSprite = 766, blipColour = 1, blipScale = 1.5, blipLength = 2, sound = "robberysound", offset = "false", blipflash = "false" },
```
- You can use the following export for the alert `exports["ps-dispatch"]:cyberBarRobbery()`
- Add the following snippets to `LENT-PedSpawner`
```lua
	["CyberbarHeist"] = {
        ["coords"] = vector4(1642.65, 4846.56, 45.48, 22.63), -- The start Coordinatos of the first mission
        
        ["ped"] = "hc_hacker", -- The model of chracter that you interact with
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE", -- The animation they are playing
        ["block_events"] = true, -- Will block the ped from moving when hit or bumped into
        ["invincible"] = true, -- Makes the ped invincible
        ["freeze"] = true, -- Freezes the ped in it's location
  
        ["weapon"] = false, -- Leave false when using Scenario
        ["weapon_hash"] = "", -- Should be hash like "WEAPON_CARBINERIFLE"
        ["hostile"] = false, -- Should the ped attack the player?

        ["target"] = true, -- True = Allows interaction | False = Doesn't allow
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:START", 
        ["icon"] = "fa-solid fa-hotel", -- The icon that shows up
        ["text"] = "Start Cyberbar Robbery", -- The text which is cheap "locale" support

        -- [[ Do recommand that you use a clothing menu to get the right ID's ]] --
        ["clothing"] = false, -- True if ped = "mp_m_freemode_01" || "mp_f_freemode_01" else leave false
        ["mother"] = -1, ["father"] = -1, ["mix"] = 1.0,
        ["hair"] = -1, ["HAIR_Texture"] = 0, ["HAIR_HIGHLIGHT"] = 0,
        ["hands"] = -1, ["HA_Texture"] = 0,
        ["undershirts"] = -1, ["U_Texture"] = 0,
        ["tops"] = -1, ["T_Texture"] = 0,
        ["kevlar"] = -1, ["K_Texture"] = 0,
        ["decal"] = -1, ["D_Texture"] = 0,
        ["accs"] = -1, ["A_Texture"] = 0,
        ["bags"] = -1, ["B_Texture"] = 0,
        ["pants"] = -1, ["P_Texture"] = 0,
        ["shoes"] = -1, ["S_Texture"] = 0,
        ["eye_COLOR"] = 2,
        ["makeup"] = -1, ["makeup_OPACITY"] = 0.0, ["makeup_COLOR"] = 0, -- leave opacity at 1.0
        ["lipstick"] = -1, ["lipstick_OPACITY"] = 0.0, ["lipstick_COLOR"] = 0, -- leave opacity at 1.0
        ["eyebrows"] = -1, ["eyebrows_OPACITY"] = 0.0, ["eyebrows_COLOR"] = 0, -- leave opacity at 1.0
        ["beard"] = -1, ["beard_OPACITY"] = 1.0, ["beard_COLOR"] = 1, -- leave opacity at 1.0
    },
    ["CyberbarHeist2"] = {
        ["coords"] = vector4(-11.34, 6499.67, 31.5, 44.8), -- The start Coordinatos of the first mission
        
        ["ped"] = "cs_dale", -- The model of chracter that you interact with
        ["scenario"] = "WORLD_HUMAN_STAND_MOBILE", -- The animation they are playing
        ["block_events"] = true, -- Will block the ped from moving when hit or bumped into
        ["invincible"] = true, -- Makes the ped invincible
        ["freeze"] = true, -- Freezes the ped in it's location
  
        ["weapon"] = false, -- Leave false when using Scenario
        ["weapon_hash"] = "", -- Should be hash like "WEAPON_CARBINERIFLE"
        ["hostile"] = false, -- Should the ped attack the player?

        ["target"] = true, -- True = Allows interaction | False = Doesn't allow
        ["type"] = "client",
        ["event"] = "LENT:CYBERBAR:FINISH", 
        ["icon"] = "fa-solid fa-gun", -- The icon that shows up
        ["text"] = "Deliver Cyberbar Weapons", -- The text which is cheap "locale" support

        -- [[ Do recommand that you use a clothing menu to get the right ID's ]] --
        ["clothing"] = false, -- True if ped = "mp_m_freemode_01" || "mp_f_freemode_01" else leave false
        ["mother"] = -1, ["father"] = -1, ["mix"] = 1.0,
        ["hair"] = -1, ["HAIR_Texture"] = 0, ["HAIR_HIGHLIGHT"] = 0,
        ["hands"] = -1, ["HA_Texture"] = 0,
        ["undershirts"] = -1, ["U_Texture"] = 0,
        ["tops"] = -1, ["T_Texture"] = 0,
        ["kevlar"] = -1, ["K_Texture"] = 0,
        ["decal"] = -1, ["D_Texture"] = 0,
        ["accs"] = -1, ["A_Texture"] = 0,
        ["bags"] = -1, ["B_Texture"] = 0,
        ["pants"] = -1, ["P_Texture"] = 0,
        ["shoes"] = -1, ["S_Texture"] = 0,
        ["eye_COLOR"] = 2,
        ["makeup"] = -1, ["makeup_OPACITY"] = 0.0, ["makeup_COLOR"] = 0, -- leave opacity at 1.0
        ["lipstick"] = -1, ["lipstick_OPACITY"] = 0.0, ["lipstick_COLOR"] = 0, -- leave opacity at 1.0
        ["eyebrows"] = -1, ["eyebrows_OPACITY"] = 0.0, ["eyebrows_COLOR"] = 0, -- leave opacity at 1.0
        ["beard"] = -1, ["beard_OPACITY"] = 1.0, ["beard_COLOR"] = 1, -- leave opacity at 1.0
    },
```
- In your `inventory/server/main.lua` add this to the top
```lua
local LENTItems = {}
```
- In your `inventory/server/main.lua` create this function
```lua
-- [[ LENT Items ]] --
local function SetupLentItems(LENTItems)
	local items = {}
	if LENTItems and next(LENTItems) then
		for _, item in pairs(LENTItems) do
			local itemInfo = QBCore.Shared.Items[item.name:lower()]
			if itemInfo then
				items[item.slot] = {
					name = itemInfo["name"],
					amount = tonumber(item.amount),
					info = item.info or "",
					label = itemInfo["label"],
					description = itemInfo["description"] or "",
					weight = itemInfo["weight"],
					type = itemInfo["type"],
					unique = itemInfo["unique"],
					useable = itemInfo["useable"],
					image = itemInfo["image"],
					slot = item.slot,
				}
			end
		end
	end
	return items
end
```
- In your `inventory/server/main.lua` find this function: `inventory:server:OpenInventory` and replace with this;
```lua
RegisterNetEvent('inventory:server:OpenInventory', function(name, id, other)
	local src = source
	local ply = Player(src)
	local Player = QBCore.Functions.GetPlayer(src)
	if not ply.state.inv_busy then
		if name and id then
			local secondInv = {}
			if name == "stash" then
				if Stashes[id] then
					if Stashes[id].isOpen then
						local Target = QBCore.Functions.GetPlayer(Stashes[id].isOpen)
						if Target then
							TriggerClientEvent('inventory:client:CheckOpenState', Stashes[id].isOpen, name, id, Stashes[id].label)
						else
							Stashes[id].isOpen = false
						end
					end
				end
				local maxweight = 1000000
				local slots = 50
				if other then
					maxweight = other.maxweight or 1000000
					slots = other.slots or 50
				end
				secondInv.name = "stash-"..id
				secondInv.label = "Stash-"..id
				secondInv.maxweight = maxweight
				secondInv.inventory = {}
				secondInv.slots = slots
				if Stashes[id] and Stashes[id].isOpen then
					secondInv.name = "none-inv"
					secondInv.label = "Stash-None"
					secondInv.maxweight = 1000000
					secondInv.inventory = {}
					secondInv.slots = 0
				else
					local stashItems = GetStashItems(id)
					if next(stashItems) then
						secondInv.inventory = stashItems
						Stashes[id] = {}
						Stashes[id].items = stashItems
						Stashes[id].isOpen = src
						Stashes[id].label = secondInv.label
					else
						Stashes[id] = {}
						Stashes[id].items = {}
						Stashes[id].isOpen = src
						Stashes[id].label = secondInv.label
					end
				end
			elseif name == "trunk" then
				if Trunks[id] then
					if Trunks[id].isOpen then
						local Target = QBCore.Functions.GetPlayer(Trunks[id].isOpen)
						if Target then
							TriggerClientEvent('inventory:client:CheckOpenState', Trunks[id].isOpen, name, id, Trunks[id].label)
						else
							Trunks[id].isOpen = false
						end
					end
				end
				secondInv.name = "trunk-"..id
				secondInv.label = "Trunk-"..id
				secondInv.maxweight = other.maxweight or 60000
				secondInv.inventory = {}
				secondInv.slots = other.slots or 50
				if (Trunks[id] and Trunks[id].isOpen) or (QBCore.Shared.SplitStr(id, "PLZI")[2] and Player.PlayerData.job.name ~= "police") then
					secondInv.name = "none-inv"
					secondInv.label = "Trunk-None"
					secondInv.maxweight = other.maxweight or 60000
					secondInv.inventory = {}
					secondInv.slots = 0
				else
					if id then
						local ownedItems = GetOwnedVehicleItems(id)
						if IsVehicleOwned(id) and next(ownedItems) then
							secondInv.inventory = ownedItems
							Trunks[id] = {}
							Trunks[id].items = ownedItems
							Trunks[id].isOpen = src
							Trunks[id].label = secondInv.label
						elseif Trunks[id] and not Trunks[id].isOpen then
							secondInv.inventory = Trunks[id].items
							Trunks[id].isOpen = src
							Trunks[id].label = secondInv.label
						else
							Trunks[id] = {}
							Trunks[id].items = {}
							Trunks[id].isOpen = src
							Trunks[id].label = secondInv.label
						end
					end
				end
			elseif name == "glovebox" then
				if Gloveboxes[id] then
					if Gloveboxes[id].isOpen then
						local Target = QBCore.Functions.GetPlayer(Gloveboxes[id].isOpen)
						if Target then
							TriggerClientEvent('inventory:client:CheckOpenState', Gloveboxes[id].isOpen, name, id, Gloveboxes[id].label)
						else
							Gloveboxes[id].isOpen = false
						end
					end
				end
				secondInv.name = "glovebox-"..id
				secondInv.label = "Glovebox-"..id
				secondInv.maxweight = 10000
				secondInv.inventory = {}
				secondInv.slots = 5
				if Gloveboxes[id] and Gloveboxes[id].isOpen then
					secondInv.name = "none-inv"
					secondInv.label = "Glovebox-None"
					secondInv.maxweight = 10000
					secondInv.inventory = {}
					secondInv.slots = 0
				else
					local ownedItems = GetOwnedVehicleGloveboxItems(id)
					if Gloveboxes[id] and not Gloveboxes[id].isOpen then
						secondInv.inventory = Gloveboxes[id].items
						Gloveboxes[id].isOpen = src
						Gloveboxes[id].label = secondInv.label
					elseif IsVehicleOwned(id) and next(ownedItems) then
						secondInv.inventory = ownedItems
						Gloveboxes[id] = {}
						Gloveboxes[id].items = ownedItems
						Gloveboxes[id].isOpen = src
						Gloveboxes[id].label = secondInv.label
					else
						Gloveboxes[id] = {}
						Gloveboxes[id].items = {}
						Gloveboxes[id].isOpen = src
						Gloveboxes[id].label = secondInv.label
					end
				end
			elseif name == "shop" then
				secondInv.name = "itemshop-"..id
				secondInv.label = other.label
				secondInv.maxweight = 900000
				secondInv.inventory = SetupShopItems(other.items)
				ShopItems[id] = {}
				ShopItems[id].items = other.items
				secondInv.slots = #other.items
			elseif name == "lent" then
				secondInv.name = "itemshop-"..id
				secondInv.label = other.label
				secondInv.maxweight = 900000
				secondInv.inventory = SetupLentItems(other.items)
				ShopItems[id] = {}
				ShopItems[id].items = other.items
				secondInv.slots = #other.items
			elseif name == "traphouse" then
				secondInv.name = "traphouse-"..id
				secondInv.label = other.label
				secondInv.maxweight = 900000
				secondInv.inventory = other.items
				secondInv.slots = other.slots
			elseif name == "crafting" then
				secondInv.name = "crafting"
				secondInv.label = other.label
				secondInv.maxweight = 900000
				secondInv.inventory = other.items
				secondInv.slots = #other.items
			elseif name == "attachment_crafting" then
				secondInv.name = "attachment_crafting"
				secondInv.label = other.label
				secondInv.maxweight = 900000
				secondInv.inventory = other.items
				secondInv.slots = #other.items
			elseif name == "otherplayer" then
				local OtherPlayer = QBCore.Functions.GetPlayer(tonumber(id))
				if OtherPlayer then
					secondInv.name = "otherplayer-"..id
					secondInv.label = "Player-"..id
					secondInv.maxweight = Config.MaxInventoryWeight
					secondInv.inventory = OtherPlayer.PlayerData.items
					if Player.PlayerData.job.name == "police" and Player.PlayerData.job.onduty then
						secondInv.slots = Config.MaxInventorySlots
					else
						secondInv.slots = Config.MaxInventorySlots - 1
					end
					Wait(250)
				end
			else
				if Drops[id] then
					if Drops[id].isOpen then
						local Target = QBCore.Functions.GetPlayer(Drops[id].isOpen)
						if Target then
							TriggerClientEvent('inventory:client:CheckOpenState', Drops[id].isOpen, name, id, Drops[id].label)
						else
							Drops[id].isOpen = false
						end
					end
				end
				if Drops[id] and not Drops[id].isOpen then
					secondInv.coords = Drops[id].coords
					secondInv.name = id
					secondInv.label = "Dropped-"..tostring(id)
					secondInv.maxweight = 100000
					secondInv.inventory = Drops[id].items
					secondInv.slots = 30
					Drops[id].isOpen = src
					Drops[id].label = secondInv.label
					Drops[id].createdTime = os.time()
				else
					secondInv.name = "none-inv"
					secondInv.label = "Dropped-None"
					secondInv.maxweight = 100000
					secondInv.inventory = {}
					secondInv.slots = 0
				end
			end
			TriggerClientEvent("inventory:client:OpenInventory", src, {}, Player.PlayerData.items, secondInv)
		else
			TriggerClientEvent("inventory:client:OpenInventory", src, {}, Player.PlayerData.items)
		end
	else
		TriggerClientEvent('QBCore:Notify', src, 'Not Accessible', 'error')
	end
end)
```
- Find the following event in your `inventory/server/main.lua`: `inventory:server:SetInventoryData` and replace with;
```lua
RegisterNetEvent('inventory:server:SetInventoryData', function(fromInventory, toInventory, fromSlot, toSlot, fromAmount, toAmount)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	fromSlot = tonumber(fromSlot)
	toSlot = tonumber(toSlot)

	if (fromInventory == "player" or fromInventory == "hotbar") and (QBCore.Shared.SplitStr(toInventory, "-")[1] == "itemshop" or toInventory == "crafting") then
		return
	end

	if fromInventory == "player" or fromInventory == "hotbar" then
		local fromItemData = GetItemBySlot(src, fromSlot)
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
					end
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			elseif QBCore.Shared.SplitStr(toInventory, "-")[1] == "otherplayer" then
				local playerId = tonumber(QBCore.Shared.SplitStr(toInventory, "-")[2])
				local OtherPlayer = QBCore.Functions.GetPlayer(playerId)
				local toItemData = OtherPlayer.PlayerData.items[toSlot]
				RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(playerId, itemInfo["name"], toAmount, fromSlot)
						AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "robbing", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount.. "** with player: **".. GetPlayerName(OtherPlayer.PlayerData.source) .. "** (citizenid: *"..OtherPlayer.PlayerData.citizenid.."* | id: *"..OtherPlayer.PlayerData.source.."*)")
					end
				else
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					TriggerEvent("qb-log:server:CreateLog", "robbing", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** to player: **".. GetPlayerName(OtherPlayer.PlayerData.source) .. "** (citizenid: *"..OtherPlayer.PlayerData.citizenid.."* | id: *"..OtherPlayer.PlayerData.source.."*)")
				end
				local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddItem(playerId, itemInfo["name"], fromAmount, toSlot, fromItemData.info)
			elseif QBCore.Shared.SplitStr(toInventory, "-")[1] == "trunk" then
				local plate = QBCore.Shared.SplitStr(toInventory, "-")[2]
				local toItemData = Trunks[plate].items[toSlot]
				RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveFromTrunk(plate, fromSlot, itemInfo["name"], toAmount)
						AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "trunk", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount .. "** - plate: *" .. plate .. "*")
					end
				else
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					TriggerEvent("qb-log:server:CreateLog", "trunk", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** - plate: *" .. plate .. "*")
				end
				local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToTrunk(plate, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			elseif QBCore.Shared.SplitStr(toInventory, "-")[1] == "glovebox" then
				local plate = QBCore.Shared.SplitStr(toInventory, "-")[2]
				local toItemData = Gloveboxes[plate].items[toSlot]
				RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveFromGlovebox(plate, fromSlot, itemInfo["name"], toAmount)
						AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "glovebox", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount .. "** - plate: *" .. plate .. "*")
					end
				else
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					TriggerEvent("qb-log:server:CreateLog", "glovebox", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** - plate: *" .. plate .. "*")
				end
				local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToGlovebox(plate, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			elseif QBCore.Shared.SplitStr(toInventory, "-")[1] == "stash" then
				local stashId = QBCore.Shared.SplitStr(toInventory, "-")[2]
				local toItemData = Stashes[stashId].items[toSlot]
				RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						--RemoveFromStash(stashId, fromSlot, itemInfo["name"], toAmount)
						RemoveFromStash(stashId, toSlot, itemInfo["name"], toAmount)
						AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "stash", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount .. "** - stash: *" .. stashId .. "*")
					end
				else
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					TriggerEvent("qb-log:server:CreateLog", "stash", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** - stash: *" .. stashId .. "*")
				end
				local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToStash(stashId, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			elseif QBCore.Shared.SplitStr(toInventory, "-")[1] == "traphouse" then
				-- Traphouse
				local traphouseId = QBCore.Shared.SplitStr(toInventory, "-")[2]
				local toItemData = exports['qb-traphouse']:GetInventoryData(traphouseId, toSlot)
				local IsItemValid = exports['qb-traphouse']:CanItemBeSaled(fromItemData.name:lower())
				if IsItemValid then
					RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
					TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
					if toItemData  then
						local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						toAmount = tonumber(toAmount) or toItemData.amount
						if toItemData.name ~= fromItemData.name then
							exports['qb-traphouse']:RemoveHouseItem(traphouseId, fromSlot, itemInfo["name"], toAmount)
							AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
							TriggerEvent("qb-log:server:CreateLog", "traphouse", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount .. "** - traphouse: *" .. traphouseId .. "*")
						end
					else
						local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
						TriggerEvent("qb-log:server:CreateLog", "traphouse", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** - traphouse: *" .. traphouseId .. "*")
					end
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					exports['qb-traphouse']:AddHouseItem(traphouseId, toSlot, itemInfo["name"], fromAmount, fromItemData.info, src)
				else
					TriggerClientEvent('QBCore:Notify', src, "You can\'t sell this item..", 'error')
				end
			else
				-- drop
				toInventory = tonumber(toInventory)
				if toInventory == nil or toInventory == 0 then
					CreateNewDrop(src, fromSlot, toSlot, fromAmount)
				else
					local toItemData = Drops[toInventory].items[toSlot]
					RemoveItem(src, fromItemData.name, fromAmount, fromSlot)
					TriggerClientEvent("inventory:client:CheckWeapon", src, fromItemData.name)
					if toItemData then
						local itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						toAmount = tonumber(toAmount) or toItemData.amount
						if toItemData.name ~= fromItemData.name then
							AddItem(src, toItemData.name, toAmount, fromSlot, toItemData.info)
							RemoveFromDrop(toInventory, fromSlot, itemInfo["name"], toAmount)
							TriggerEvent("qb-log:server:CreateLog", "drop", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** with name: **" .. fromItemData.name .. "**, amount: **" .. fromAmount .. "** - dropid: *" .. toInventory .. "*")
						end
					else
						local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
						TriggerEvent("qb-log:server:CreateLog", "drop", "Dropped Item", "red", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) dropped new item; name: **"..itemInfo["name"].."**, amount: **" .. fromAmount .. "** - dropid: *" .. toInventory .. "*")
					end
					local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
					AddToDrop(toInventory, toSlot, itemInfo["name"], fromAmount, fromItemData.info)
					if itemInfo["name"] == "radio" then
						TriggerClientEvent('Radio.Set', src, false)
					end
				end
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "You don\'t have this item!", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "otherplayer" then
		local playerId = tonumber(QBCore.Shared.SplitStr(fromInventory, "-")[2])
		local OtherPlayer = QBCore.Functions.GetPlayer(playerId)
		local fromItemData = OtherPlayer.PlayerData.items[fromSlot]
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveItem(playerId, itemInfo["name"], fromAmount, fromSlot)
				TriggerClientEvent("inventory:client:CheckWeapon", OtherPlayer.PlayerData.source, fromItemData.name)
				if toItemData then
					itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddItem(playerId, itemInfo["name"], toAmount, fromSlot, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "robbing", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** from player: **".. GetPlayerName(OtherPlayer.PlayerData.source) .. "** (citizenid: *"..OtherPlayer.PlayerData.citizenid.."* | *"..OtherPlayer.PlayerData.source.."*)")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "robbing", "Retrieved Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) took item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount .. "** from player: **".. GetPlayerName(OtherPlayer.PlayerData.source) .. "** (citizenid: *"..OtherPlayer.PlayerData.citizenid.."* | *"..OtherPlayer.PlayerData.source.."*)")
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				local toItemData = OtherPlayer.PlayerData.items[toSlot]
				RemoveItem(playerId, itemInfo["name"], fromAmount, fromSlot)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						RemoveItem(playerId, itemInfo["name"], toAmount, toSlot)
						AddItem(playerId, itemInfo["name"], toAmount, fromSlot, toItemData.info)
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddItem(playerId, itemInfo["name"], fromAmount, toSlot, fromItemData.info)
			end
		else
			QBCore.Functions.Notify(src, "Item doesn't exist", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "trunk" then
		local plate = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local fromItemData = Trunks[plate].items[fromSlot]
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveFromTrunk(plate, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddToTrunk(plate, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "trunk", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** plate: *" .. plate .. "*")
					else
						TriggerEvent("qb-log:server:CreateLog", "trunk", "Stacked Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) stacked item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** from plate: *" .. plate .. "*")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "trunk", "Received Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount.. "** plate: *" .. plate .. "*")
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				local toItemData = Trunks[plate].items[toSlot]
				RemoveFromTrunk(plate, fromSlot, itemInfo["name"], fromAmount)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						RemoveFromTrunk(plate, toSlot, itemInfo["name"], toAmount)
						AddToTrunk(plate, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToTrunk(plate, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "Item doesn\'t exist??", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "glovebox" then
		local plate = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local fromItemData = Gloveboxes[plate].items[fromSlot]
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveFromGlovebox(plate, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddToGlovebox(plate, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "glovebox", "Swapped", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src..")* swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; name: **"..itemInfo["name"].."**, amount: **" .. toAmount .. "** plate: *" .. plate .. "*")
					else
						TriggerEvent("qb-log:server:CreateLog", "glovebox", "Stacked Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) stacked item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** from plate: *" .. plate .. "*")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "glovebox", "Received Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount.. "** plate: *" .. plate .. "*")
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				local toItemData = Gloveboxes[plate].items[toSlot]
				RemoveFromGlovebox(plate, fromSlot, itemInfo["name"], fromAmount)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						RemoveFromGlovebox(plate, toSlot, itemInfo["name"], toAmount)
						AddToGlovebox(plate, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToGlovebox(plate, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "Item doesn\'t exist??", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "stash" then
		local stashId = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local fromItemData = Stashes[stashId].items[fromSlot]
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveFromStash(stashId, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddToStash(stashId, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
						TriggerEvent("qb-log:server:CreateLog", "stash", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount .. "** stash: *" .. stashId .. "*")
					else
						TriggerEvent("qb-log:server:CreateLog", "stash", "Stacked Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) stacked item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** from stash: *" .. stashId .. "*")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "stash", "Received Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount.. "** stash: *" .. stashId .. "*")
				end
				SaveStashItems(stashId, Stashes[stashId].items)
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				local toItemData = Stashes[stashId].items[toSlot]
				RemoveFromStash(stashId, fromSlot, itemInfo["name"], fromAmount)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						RemoveFromStash(stashId, toSlot, itemInfo["name"], toAmount)
						AddToStash(stashId, fromSlot, toSlot, itemInfo["name"], toAmount, toItemData.info)
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToStash(stashId, toSlot, fromSlot, itemInfo["name"], fromAmount, fromItemData.info)
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "Item doesn\'t exist??", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "lent" then
		local shopType = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local itemData = LENTItems[shopType].items[fromSlot]

        if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
            itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
			itemData.info.quality = 100
        end
		AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "traphouse" then
		local traphouseId = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local fromItemData = exports['qb-traphouse']:GetInventoryData(traphouseId, fromSlot)
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				exports['qb-traphouse']:RemoveHouseItem(traphouseId, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						exports['qb-traphouse']:AddHouseItem(traphouseId, fromSlot, itemInfo["name"], toAmount, toItemData.info, src)
						TriggerEvent("qb-log:server:CreateLog", "stash", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount .. "** stash: *" .. traphouseId .. "*")
					else
						TriggerEvent("qb-log:server:CreateLog", "stash", "Stacked Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) stacked item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** from stash: *" .. traphouseId .. "*")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "stash", "Received Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount.. "** stash: *" .. traphouseId .. "*")
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				local toItemData = exports['qb-traphouse']:GetInventoryData(traphouseId, toSlot)
				exports['qb-traphouse']:RemoveHouseItem(traphouseId, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						exports['qb-traphouse']:RemoveHouseItem(traphouseId, toSlot, itemInfo["name"], toAmount)
						exports['qb-traphouse']:AddHouseItem(traphouseId, fromSlot, itemInfo["name"], toAmount, toItemData.info, src)
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				exports['qb-traphouse']:AddHouseItem(traphouseId, toSlot, itemInfo["name"], fromAmount, fromItemData.info, src)
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "Item doesn't exist??", "error")
		end
	elseif QBCore.Shared.SplitStr(fromInventory, "-")[1] == "itemshop" then
		local shopType = QBCore.Shared.SplitStr(fromInventory, "-")[2]
		local itemData = ShopItems[shopType].items[fromSlot]
		local itemInfo = QBCore.Shared.Items[itemData.name:lower()]
		local bankBalance = Player.PlayerData.money["bank"]
		local price = tonumber((itemData.price * fromAmount))

		if QBCore.Shared.SplitStr(shopType, "_")[1] == "Dealer" then
			if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
				price = tonumber(itemData.price)
				if Player.Functions.RemoveMoney("cash", price, "dealer-item-bought") then
					itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
					itemData.info.quality = 100
					AddItem(src, itemData.name, 1, toSlot, itemData.info)
					TriggerClientEvent('qb-drugs:client:updateDealerItems', src, itemData, 1)
					QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
					TriggerEvent("qb-log:server:CreateLog", "dealers", "Dealer item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
				else
					QBCore.Functions.Notify(src, "You don\'t have enough cash..", "error")
				end
			else
				if Player.Functions.RemoveMoney("cash", price, "dealer-item-bought") then
					AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
					TriggerClientEvent('qb-drugs:client:updateDealerItems', src, itemData, fromAmount)
					QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
					TriggerEvent("qb-log:server:CreateLog", "dealers", "Dealer item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. "  for $"..price)
				else
					QBCore.Functions.Notify(src, "You don't have enough cash..", "error")
				end
			end
		elseif QBCore.Shared.SplitStr(shopType, "_")[1] == "Itemshop" then
			if Player.Functions.RemoveMoney("cash", price, "itemshop-bought-item") then
                if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
                    itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
					itemData.info.quality = 100
                end
				AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
				TriggerClientEvent('qb-shops:client:UpdateShop', src, QBCore.Shared.SplitStr(shopType, "_")[2], itemData, fromAmount)
				QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
				TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
			elseif bankBalance >= price then
				Player.Functions.RemoveMoney("bank", price, "itemshop-bought-item")
                if QBCore.Shared.SplitStr(itemData.name, "_")[1] == "weapon" then
                    itemData.info.serie = tostring(QBCore.Shared.RandomInt(2) .. QBCore.Shared.RandomStr(3) .. QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(4))
					itemData.info.quality = 100
                end
				AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
				TriggerClientEvent('qb-shops:client:UpdateShop', src, QBCore.Shared.SplitStr(shopType, "_")[2], itemData, fromAmount)
				QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
				TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
			else
				QBCore.Functions.Notify(src, "You don't have enough cash..", "error")
			end
		else
			if Player.Functions.RemoveMoney("cash", price, "unkown-itemshop-bought-item") then
				AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
				QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
				TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
			elseif bankBalance >= price then
				Player.Functions.RemoveMoney("bank", price, "unkown-itemshop-bought-item")
				AddItem(src, itemData.name, fromAmount, toSlot, itemData.info)
				QBCore.Functions.Notify(src, itemInfo["label"] .. " bought!", "success")
				TriggerEvent("qb-log:server:CreateLog", "shops", "Shop item bought", "green", "**"..GetPlayerName(src) .. "** bought a " .. itemInfo["label"] .. " for $"..price)
			else
				TriggerClientEvent('QBCore:Notify', src, "You don\'t have enough cash..", "error")
			end
		end
	elseif fromInventory == "crafting" then
		local itemData = Config.CraftingItems[fromSlot]
		if hasCraftItems(src, itemData.costs, fromAmount) then
			TriggerClientEvent("inventory:client:CraftItems", src, itemData.name, itemData.costs, fromAmount, toSlot, itemData.points)
		else
			TriggerClientEvent("inventory:client:UpdatePlayerInventory", src, true)
			TriggerClientEvent('QBCore:Notify', src, "You don't have the right items..", "error")
		end
	elseif fromInventory == "attachment_crafting" then
		local itemData = Config.AttachmentCrafting["items"][fromSlot]
		if hasCraftItems(src, itemData.costs, fromAmount) then
			TriggerClientEvent("inventory:client:CraftAttachment", src, itemData.name, itemData.costs, fromAmount, toSlot, itemData.points)
		else
			TriggerClientEvent("inventory:client:UpdatePlayerInventory", src, true)
			TriggerClientEvent('QBCore:Notify', src, "You don't have the right items..", "error")
		end
	else
		-- drop
		fromInventory = tonumber(fromInventory)
		local fromItemData = Drops[fromInventory].items[fromSlot]
		fromAmount = tonumber(fromAmount) or fromItemData.amount
		if fromItemData and fromItemData.amount >= fromAmount then
			local itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
			if toInventory == "player" or toInventory == "hotbar" then
				local toItemData = GetItemBySlot(src, toSlot)
				RemoveFromDrop(fromInventory, fromSlot, itemInfo["name"], fromAmount)
				if toItemData then
					toAmount = tonumber(toAmount) and tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						RemoveItem(src, toItemData.name, toAmount, toSlot)
						AddToDrop(fromInventory, toSlot, itemInfo["name"], toAmount, toItemData.info)
						if itemInfo["name"] == "radio" then
							TriggerClientEvent('Radio.Set', src, false)
						end
						TriggerEvent("qb-log:server:CreateLog", "drop", "Swapped Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) swapped item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** with item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount .. "** - dropid: *" .. fromInventory .. "*")
					else
						TriggerEvent("qb-log:server:CreateLog", "drop", "Stacked Item", "orange", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) stacked item; name: **"..toItemData.name.."**, amount: **" .. toAmount .. "** - from dropid: *" .. fromInventory .. "*")
					end
				else
					TriggerEvent("qb-log:server:CreateLog", "drop", "Received Item", "green", "**".. GetPlayerName(src) .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) received item; name: **"..fromItemData.name.."**, amount: **" .. fromAmount.. "** -  dropid: *" .. fromInventory .. "*")
				end
				AddItem(src, fromItemData.name, fromAmount, toSlot, fromItemData.info)
			else
				toInventory = tonumber(toInventory)
				local toItemData = Drops[toInventory].items[toSlot]
				RemoveFromDrop(fromInventory, fromSlot, itemInfo["name"], fromAmount)
				--Player.PlayerData.items[toSlot] = fromItemData
				if toItemData then
					--Player.PlayerData.items[fromSlot] = toItemData
					toAmount = tonumber(toAmount) or toItemData.amount
					if toItemData.name ~= fromItemData.name then
						itemInfo = QBCore.Shared.Items[toItemData.name:lower()]
						RemoveFromDrop(toInventory, toSlot, itemInfo["name"], toAmount)
						AddToDrop(fromInventory, fromSlot, itemInfo["name"], toAmount, toItemData.info)
						if itemInfo["name"] == "radio" then
							TriggerClientEvent('Radio.Set', src, false)
						end
					end
				end
				itemInfo = QBCore.Shared.Items[fromItemData.name:lower()]
				AddToDrop(toInventory, toSlot, itemInfo["name"], fromAmount, fromItemData.info)
				if itemInfo["name"] == "radio" then
					TriggerClientEvent('Radio.Set', src, false)
				end
			end
		else
			TriggerClientEvent("QBCore:Notify", src, "Item doesn't exist??", "error")
		end
	end
end)
```

## Issues
|  Question |  Answer |
|----       |----     |
| The Sniper Rifles are in the `items.lua` but not in the actual resource. | That's right. We will release this on a other date which will be the future repository for ALL addon items created by LENT. I give a massive thanks to `thelynxtrain#7652` for drawing some of these for me!|
| Some Images are not showing up? | In general all images provided in the `Images` file should be sufficient for your server. Whether you decide to use our custom / existing images is up to you. |

## Roadmap
|  Subject |  Completed? |
|----      |----         |
| Automate the crafting recepies with args / params | ❌ |
| Add food items to the polyzone | ❌ |
| Create glass items instead of bottles | ❌ |
| Recode the Consumables part to account for change mentioned above | ❌ |
| Restructure some of the files to lower file amount | ❌ |
| Lower amount of usage in resource profiler | ❌ |
| Check cop amount before attempting to start the heist | 💚 |
| Rehide the ped / hide the finish ped | ❌ |
| Additional Config for the weapons | ❌ |
| Setting for Weapons | ❌ |
| Payout config for the robbery | ❌ |
| Payment system for Cyberbar (Pay Directly not by invoice) | ❌ |
| Parking Locations for Cyberbar (Employee Storage) | ❌ |
| Vehicles + Liveries for delivery build in job | ❌ |

## Contributors
|  Rank       |  Member       | ID                 | Qualifications                       |
|----         |----           |----                |----                                  |
| Director    | [Lanzaned#2512](https://discordapp.com/users/871877975346405388) | [871877975346405388](https://discordapp.com/users/871877975346405388) | Javascript, XML, HTML, CSS, lua, SQL |
| Contributor    | [thelynxtrain#7652](https://discordapp.com/users/113017332346925056) | [113017332346925056](https://discordapp.com/users/113017332346925056) | N/A |

## Useful Links 
Discord: https://discord.lanzaned.com<br>
Github: https://github.lanzaned.com<br>
Documentation: https://docs.lanzaned.com/
