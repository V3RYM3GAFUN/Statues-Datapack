tag @s add rusher
scoreboard players set @s Statues.Players 0

effect give @s speed infinite 1 true
effect give @s weakness infinite 100 true

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:1}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:30,amplifier:3,show_particles:0b}]} 16

item replace entity @s hotbar.8 with compass

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:shaper,material:lapis},display:{color:3949738,Name:'["",{"text":"Runner Outfit","italic":false,"color":"dark_aqua","bold":true}]'},Unbreakable:1,HideFlags:196}