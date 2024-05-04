tag @s add medic
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 1 true
effect give @s instant_health 5 10 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/medic/medic_pistol
loot replace entity @s hotbar.1 loot statues:items/facade/classes/medic/adrenaline_injected_dart
loot replace entity @s hotbar.2 loot statues:items/facade/classes/medic/weak_anti_anomaly_ammo

loot replace entity @s hotbar.3 loot statues:items/crowbar
loot replace entity @s hotbar.4 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.5 loot statues:items/facade/classes/medic/potion_stim
loot replace entity @s inventory.0 loot statues:items/facade/classes/medic/potion_stim
loot replace entity @s inventory.1 loot statues:items/facade/classes/medic/potion_stim

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Medic\'s helmet"}'},SkullOwner: {Id: [I; -235476552, -1627697789, -1277141513, 389390304], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQwYjBkZjA4ZjgwYjdlZGUwNWYxMjgzMmIyNmQ4ZGI3MWI2NGU5MjcyNTBiOWZiZDc1Y2UxOTFmODgxYTY5OSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:sentry,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Medic Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor