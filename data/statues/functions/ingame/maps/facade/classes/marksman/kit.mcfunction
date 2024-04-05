tag @s add recon
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Sniper rifle","italic":false}]'},Enchantments:[],HideFlags:1,CustomModelData:2} 1
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:0,display:{Name:'[{"text":"Sniper ammo","italic":false,"color":"dark_gray","bold":true}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:60,show_particles:0b},{id:"minecraft:glowing",duration:300,show_particles:0b}]} 16

item replace entity @s hotbar.8 with compass

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:tide,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:sentry,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:host,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}