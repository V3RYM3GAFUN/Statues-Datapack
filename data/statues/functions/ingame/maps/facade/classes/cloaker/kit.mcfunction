tag @s add cloaker
tag @s add class_selected
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with crossbow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:6,Enchantments:[{id:"quick_charge",lvl:5}]}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:60,show_particles:0b},{id:"minecraft:slowness",duration:120,amplifier:2,show_particles:0b}]} 16

loot replace entity @s hotbar.2 loot statues:items/crowbar

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Cloaker\'s helmet"}'},SkullOwner: {Id: [I; -1588096129, 470896178, -1736494308, -995102482], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjFmMzc0MTZlNTI1M2UzZjU0MGVlZTc4MTM3ZDBiNGI5ZThjOWY2YmFmNWRiNjQ2Y2Y5MDY5Y2ZkNGIyOGM0NSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Cloaker Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/pick_class_survivor