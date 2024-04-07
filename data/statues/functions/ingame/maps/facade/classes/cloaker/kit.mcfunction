tag @s add cloaker
tag @s add class_selected
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:1}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:30,amplifier:3,show_particles:0b}]} 16

item replace entity @s hotbar.8 with compass

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Cloaker\'s helmet"}'},SkullOwner: {Id: [I; -1588096129, 470896178, -1736494308, -995102482], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjFmMzc0MTZlNTI1M2UzZjU0MGVlZTc4MTM3ZDBiNGI5ZThjOWY2YmFmNWRiNjQ2Y2Y5MDY5Y2ZkNGIyOGM0NSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}