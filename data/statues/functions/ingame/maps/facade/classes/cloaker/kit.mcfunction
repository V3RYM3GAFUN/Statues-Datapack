tag @s add cloaker
tag @s add class_selected
scoreboard players set @s Statues.Players 0

loot replace entity @s hotbar.0 loot statues:items/facade/classes/cloaker/anti_anomaly_gun
loot replace entity @s hotbar.1 loot statues:items/facade/classes/cloaker/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Cloaker\'s helmet"}'},SkullOwner: {Id: [I; -1588096129, 470896178, -1736494308, -995102482], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjFmMzc0MTZlNTI1M2UzZjU0MGVlZTc4MTM3ZDBiNGI5ZThjOWY2YmFmNWRiNjQ2Y2Y5MDY5Y2ZkNGIyOGM0NSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Cloaker Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor