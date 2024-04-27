tag @s add gunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with crossbow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:6,Enchantments:[{id:"quick_charge",lvl:5}]}

item replace entity @s hotbar.2 with stick{display:{Name:'{"text":"Crowbar","italic":false}',Lore:['{"text":"Used to open barrels.","italic":false,"color":"aqua"}']},CustomModelData:10}

item replace entity @s hotbar.6 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:100,show_particles:0b},{id:"minecraft:slowness",duration:140,amplifier:4,show_particles:0b}]} 16
item replace entity @s hotbar.7 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:60,show_particles:0b},{id:"minecraft:slowness",duration:120,amplifier:2,show_particles:0b}]} 64

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Gunner\'s helmet"}'},SkullOwner: {Id: [I; 441116359, -2100342880, -1745843057, 808791889], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNhNThiZWM2NTY2OGI2ODJhYmFiMzYxMzAwYTljNDEzM2JiNmMwNmRiODg0NzIxMGE2MmI4ODRlZTZmYmM3ZCJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:silence,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:ward,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}

item replace entity @s weapon.offhand with stick{flashlight:1b,CustomModelData:7,display:{Name:'{"text":"Flashlight","italic": false}'}}

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Gunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/pick_class_survivor