<div align="center">
<img width="100%" height = "100px" src="https://scontent.fdvo5-1.fna.fbcdn.net/v/t1.6435-9/120739533_785949515550660_8312183665269487160_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeHZS-M_4oPgwP_0foStcC-rW5LkDohIAIxbkuQOiEgAjAQVBtUa00s4lfCSPvdZPoiITGo_v89bux6XJQnfNSrF&_nc_ohc=PMlUaPZjGoQAX9YcWqR&_nc_ht=scontent.fdvo5-1.fna&oh=00_AfAFmEWFs5-q5rwIQIRNMtvoO133f4aOAuCbBZbnuOHnfw&oe=64390E17" alt="cover" />
</div>


## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/BerkieBb/qb-target)
- [qb-menu](https://github.com/qbcore-framework/qb-menu)
- [qb-smallresources](https://github.com/qbcore-framework/qb-smallresources)
- [PolyZone](https://github.com/mkafrin/PolyZone)

<h5>Farming Job</h5>

## Put Items (qb-smallresources/config.lua)
## in Config.ConsumablesCustom
    -- eat Food
    ['tomato'] = {
        ['progress'] = {label = 'Eat Tamato',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(5, 10), isAlcohol = false, event = false, server = false}
    },
    ['orange'] = {
        ['progress'] = {label = 'Eat Orange',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(10, 20), isAlcohol = false, event = false, server = false}
    },
    ['mango'] = {
        ['progress'] = {label = 'Eat Mango',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(10, 20), isAlcohol = false, event = false, server = false}
    },
    ['apple'] = {
        ['progress'] = {label = 'Eat Apple',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(30, 40), isAlcohol = false, event = false, server = false}
    },
    ['gauva'] = {
        ['progress'] = {label = 'Eat Gauva',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(30, 40), isAlcohol = false, event = false, server = false}
    },
    
    ['grapesred'] = {
        ['progress'] = {label = 'Eat Grapes Red',time = 3000,},
        ['animation'] = {animDict = "mp_player_inteat@burger", anim = "mp_player_int_eat_burger",flags = 10,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Hunger', replenish = math.random(30, 40), isAlcohol = false, event = false, server = false}
    },
    
    
    -- drinks Juice
    ['orangejuice'] = {
        ['progress'] = {label = 'Drinks Orange Juice',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle", flags = 15,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(10, 30), isAlcohol = false, event = false, server = false}
    },
    ['mangojuice'] = {
        ['progress'] = {label = 'Drinks Orange Juice',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(10, 30), isAlcohol = false, event = false, server = false}
    },
    ['applejuice'] = {
        ['progress'] = {label = 'Drinks Apple Juice',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle", flags = 15,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(10, 30), isAlcohol = false, event = false, server = false}
    },
    ['gauvajuice'] = {
        ['progress'] = {label = 'Drinks Gauva Juice',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(10, 30), isAlcohol = false, event = false, server = false}
    },
    ['grapejuice'] = {
        ['progress'] = {label = 'Drinks Grapes Juice',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords = false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(10, 30), isAlcohol = false, event = false, server = false}
    },

    --drinks Alcohol
    ['orangewine'] = {
        ['progress'] = {label = 'Im Drink Orange Wine',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords =false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(30, 40), isAlcohol = true, event = false, server = false}
    },
    ['mangowine'] = {
        ['progress'] = {label = 'Im Drink Mango Wine',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords =false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(30, 40), isAlcohol = true, event = false, server = false}
    },
    ['applewine'] = {
        ['progress'] = {label = 'Im Drink Apple Wine',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords =false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(30, 40), isAlcohol = true, event = false, server = false}
    },
    ['gauvawine'] = {
        ['progress'] = {label = 'Im Drink Gauva Wine',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords =false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(30, 40), isAlcohol = true, event = false, server = false}
    },
    ['grapeswine'] = {
        ['progress'] = {label = 'Im Drink Grapes Wine',time = 3000,},
        ['animation'] = {animDict = "mp_player_intdrink", anim = "loop_bottle",flags = 15,},
        ['prop'] = {model = false, bone = false, coords =false, rotation = false,},
        ['replenish'] = {type = 'Thirst', replenish = math.random(30, 40), isAlcohol = true, event = false, server = false}
    },


## Put Items (qb-core/shared/item.lua)
    --Farm Tools
	['tomato'] 			 			 = { ['name'] = 'tomato', 						['label'] = 'Tomato', 					['weight'] = 50, 		['type'] = 'item', 		['image'] = 'tomato.png',					['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Tomoto Yeah'},
	['rice'] 			 	         = { ['name'] = 'rice', 				        ['label'] = 'Rice', 			        ['weight'] = 25, 		['type'] = 'item', 		['image'] = 'rice.png',			            ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Rice Yeah'},
	['redpepper'] 			 	     = { ['name'] = 'redpepper', 				    ['label'] = 'Red Pepper', 			    ['weight'] = 50, 		['type'] = 'item', 		['image'] = 'redpepper.png',			    ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Red Pepper Yeah'},
	['eggplant'] 			 	     = { ['name'] = 'eggplant', 				    ['label'] = 'Eggplant', 			    ['weight'] = 50, 		['type'] = 'item', 		['image'] = 'eggplant.png',			        ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Eggplant Yeah'},
	['mango'] 			 	    	 = { ['name'] = 'mango', 				    	['label'] = 'Mango', 			    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mango.png',			        ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Orange Yeah'},
	['orange'] 			 	    	 = { ['name'] = 'orange', 				    	['label'] = 'Orange', 			    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'orange.png',			        ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Mango Yeah'},
	['apple'] 			 	    	 = { ['name'] = 'apple', 				    	['label'] = 'Apple', 			    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'apple.png',			        ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Apple Yeah'},
	['gauva'] 			 	    	 = { ['name'] = 'gauva', 				    	['label'] = 'Gauva', 			    	['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gauva.png',			        ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Gauva Yeah'},	
	['grapesred'] 			 	     = { ['name'] = 'grapesred', 				    ['label'] = 'Grapes Red', 			    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grapesred.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Grapes Red Yeah'},	
	---Tomato product
	['tomato_ketchup'] 			 	= { ['name'] = 'tomato_ketchup', 				['label'] = 'Tomato Ketchup', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'tomato_ketchup.png',			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Tomato Ketchup Yeah'},
	['tomato_paste'] 			 	= { ['name'] = 'tomato_paste', 				    ['label'] = 'Tomato Paste', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'tomato_paste.png',			    ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Tomato Paste Yeah'},
	['tomato_souce'] 			 	= { ['name'] = 'tomato_souce', 				    ['label'] = 'Tomato Souce', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'tomato_souce.png',			    ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Tomato Souce Yeah'},
	--Rice product
	['ricesack'] 			 	    = { ['name'] = 'ricesack', 				        ['label'] = 'ricesack', 			    ['weight'] = 2000, 		['type'] = 'item', 		['image'] = 'ricesack.png',			        ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'One Sack Rick Yeah'},
	--Red Pepper product
	['groundpepper'] 			 	= { ['name'] = 'groundpepper', 				    ['label'] = 'Black Ground Pepper', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'groundpepper.png',			    ['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Ground Pepper Yeah'},
	['sweetredpapper'] 			 	= { ['name'] = 'sweetredpapper', 				['label'] = 'Sweet Red Papper', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'sweetredpapper.png',			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Sweet Red Papper Yeah'},
	--Eggplant product
	['grilled_eggplant'] 			= { ['name'] = 'grilled_eggplant', 				['label'] = 'Grilled Eggplant', 	    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grilled_eggplant.png',			['unique'] = false, 		['useable'] = false, 	['shouldClose'] = false, 		['combinable'] = nil,         ['description'] = 'Grilled Eggplant Yeah'},
	--Mango product
	['mangojuice'] 			 	    = { ['name'] = 'mangojuice', 				    ['label'] = 'Mango Juice', 			    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'mangojuice.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Mango Juice Yeah'},
	['mangowine'] 			 	    = { ['name'] = 'mangowine', 				    ['label'] = 'Mango Wine', 			    ['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'mangowine.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Mango Wine Yeah'},
	--Orange product	
	['orangejuice'] 			 	= { ['name'] = 'orangejuice', 				    ['label'] = 'Orange Juice', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'orangejuice.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Orange Juice Yeah'},
	['orangewine'] 			 		= { ['name'] = 'orangewine', 				    ['label'] = 'Orange Wine', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'orangewine.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Orange Wine Yeah'},
	--apple product	
	['applejuice'] 			 		= { ['name'] = 'applejuice', 				    ['label'] = 'Apple Juice', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'applejuice.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Apple Juice Yeah'},
	['applewine'] 			 		= { ['name'] = 'applewine', 				    ['label'] = 'Apple Wine', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'applewine.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Apple Wine Yeah'},
	--gauva product	
	['gauvajuice'] 			 		= { ['name'] = 'gauvajuice', 				    ['label'] = 'Gauva Juice', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'gauvajuice.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Gauva Juice Yeah'},
	['gauvawine'] 			 		= { ['name'] = 'gauvawine', 				    ['label'] = 'Gauva Wine', 				['weight'] = 1500, 		['type'] = 'item', 		['image'] = 'gauvawine.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Gauva Wine Yeah'},
	--grapes product	
	['grapejuice'] 			 		= { ['name'] = 'grapejuice', 				    ['label'] = 'Grape Juice', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grapejuice.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Grape Juice Yeah'},
	['grapeswine'] 			 		= { ['name'] = 'grapeswine', 				    ['label'] = 'Grapes Wine', 				['weight'] = 100, 		['type'] = 'item', 		['image'] = 'grapeswine.png',			    ['unique'] = false, 		['useable'] = true, 	['shouldClose'] = true, 		['combinable'] = nil,         ['description'] = 'Grape Wine Yeah'},

## Put Image (/qb-inventory/html/images)


