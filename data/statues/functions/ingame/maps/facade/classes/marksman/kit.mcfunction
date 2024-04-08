tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Sniper rifle","italic":false}]'},Enchantments:[],HideFlags:1,CustomModelData:2} 1
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:0,display:{Name:'[{"text":"Sniper ammo","italic":false,"color":"dark_gray","bold":true}]'},custom_potion_effects:[{id:"minecraft:slowness",duration:60,show_particles:0b},{id:"minecraft:glowing",duration:300,show_particles:0b}]} 16

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Marksman\'s helmet"}'},SkullOwner: {Id: [I; -21530089, -992393454, -1370318747, 1865408282], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:tide,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:sentry,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:host,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}