tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Sniper rifle","italic":false}]'},Enchantments:[{id:"quick_charge",lvl:2}],HideFlags:1,CustomModelData:2} 1
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:0,display:{Name:'[{"text":"Sniper ammo","italic":false,"color":"dark_gray","bold":true}]'},custom_potion_effects:[{id:"minecraft:slowness",duration:80,amplifier:2,show_particles:0b},{id:"minecraft:glowing",duration:300,show_particles:0b}]} 16

item replace entity @s hotbar.2 with stick{display:{Name:'{"text":"Crowbar","italic":false}',Lore:['{"text":"Used to open barrels.","italic":false,"color":"aqua"}']},CustomModelData:10}

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Marksman\'s helmet"}'},SkullOwner: {Id: [I; -21530089, -992393454, -1370318747, 1865408282], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:tide,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:sentry,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:host,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Marksman Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function statues:game_events/pick_class_survivor