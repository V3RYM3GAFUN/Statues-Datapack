tag @s add trapper
tag @s add class_selected
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with crossbow{Unbreakable:1b,"display":{Name:'[{"text":"Trapper\'s gun","italic":false}]'},CustomModelData:7,Enchantments:[{id:"quick_charge",lvl:5}]}

item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:100,show_particles:0b},{id:"minecraft:slowness",duration:140,amplifier:4,show_particles:0b}]} 16

item replace entity @s hotbar.2 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:160,show_particles:0b,show_icon:0b},{id:"slowness",duration:120,amplifier:3b,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.3 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:160,show_particles:0b,show_icon:0b},{id:"slowness",duration:120,amplifier:3b,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.5 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:160,show_particles:0b,show_icon:0b},{id:"slowness",duration:120,amplifier:3b,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.6 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:160,show_particles:0b,show_icon:0b},{id:"slowness",duration:120,amplifier:3b,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.7 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:160,show_particles:0b,show_icon:0b},{id:"slowness",duration:120,amplifier:3b,show_particles:0b,show_icon:0b}]} 1

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Trapper\'s helmet"}'},SkullOwner: {Id: [I; 183527404, -589148335, -2024239231, 1720157330], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZGVjMDRkMjM4MGNkNzcwMjdmOWQ0NDQ1NWM5OGI3ZWRjNWY2NjRjYTBkZDMwYTYxMDY5MDM5MTUzOTFkYiJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}

item replace entity @s weapon.offhand with stick{flashlight:1b,CustomModelData:7,display:{Name:'{"text":"Flashlight","italic": false}'}}
