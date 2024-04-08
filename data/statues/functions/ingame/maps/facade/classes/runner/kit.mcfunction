tag @s add runner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s speed infinite 1 true
effect give @s weakness infinite 100 true

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:1}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:40,show_particles:0b},{id:"minecraft:slowness",duration:60,amplifier:2,show_particles:0b}]} 16

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Runner\'s helmet"}'},SkullOwner: {Id: [I; -1925825735, 286674216, -1522073039, -1856057337], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQzNzI4NTc5MzEzMWVkNzU1ZjFiMDA5OGYyOWRkNDEzZDY3NjU2YjYyMDg3Mjg5MzU0OTJiNDliMWQwZDRiYSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}