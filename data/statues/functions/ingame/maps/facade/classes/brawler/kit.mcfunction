tag @s add brawler
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 2 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with stick{Unbreakable:1b,"display":{Name:'[{"text":"Stun baton","italic":false}]'},Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}]}

item replace entity @s hotbar.8 with compass

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:dune,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:tide,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}