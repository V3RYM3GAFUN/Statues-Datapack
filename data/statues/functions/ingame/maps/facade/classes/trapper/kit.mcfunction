tag @s add trapper
tag @s add class_selected
scoreboard players set @s Statues.Players 0

loot replace entity @s hotbar.0 loot statues:items/facade/classes/trapper/trappers_gun

loot replace entity @s hotbar.1 loot statues:items/facade/classes/trapper/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar

loot replace entity @s hotbar.3 loot statues:items/facade/classes/trapper/smoke_grenade
loot replace entity @s inventory.0 loot statues:items/facade/classes/trapper/smoke_grenade
loot replace entity @s inventory.1 loot statues:items/facade/classes/trapper/smoke_grenade
loot replace entity @s inventory.2 loot statues:items/facade/classes/trapper/smoke_grenade
loot replace entity @s inventory.3 loot statues:items/facade/classes/trapper/smoke_grenade


item replace entity @s armor.head with player_head{display:{Name:'{"text":"Trapper\'s helmet"}'},SkullOwner: {Id: [I; 183527404, -589148335, -2024239231, 1720157330], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZGVjMDRkMjM4MGNkNzcwMjdmOWQ0NDQ1NWM5OGI3ZWRjNWY2NjRjYTBkZDMwYTYxMDY5MDM5MTUzOTFkYiJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:8606770,Name:'["",{"text":"Trapper Outfit","italic":false,"color":"#993300","bold":true}]'},Unbreakable:1,HideFlags:68}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Trapper Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/pick_class_survivor