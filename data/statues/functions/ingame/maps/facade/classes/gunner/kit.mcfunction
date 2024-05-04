tag @s add gunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

loot replace entity @s hotbar.0 loot statues:items/facade/classes/gunner/anti_anomaly_gun

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.6 loot statues:items/facade/classes/gunner/strong_anti_anomaly_ammo
loot replace entity @s hotbar.7 loot statues:items/facade/classes/gunner/weak_anti_anomaly_ammo

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Gunner\'s helmet"}'},SkullOwner: {Id: [I; 441116359, -2100342880, -1745843057, 808791889], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjNhNThiZWM2NTY2OGI2ODJhYmFiMzYxMzAwYTljNDEzM2JiNmMwNmRiODg0NzIxMGE2MmI4ODRlZTZmYmM3ZCJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:silence,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:ward,material:emerald},display:{color:8439583,Name:'["",{"text":"Gunner Outfit","italic":false,"color":"dark_green","bold":true}]'},Unbreakable:1,HideFlags:196}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Gunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor