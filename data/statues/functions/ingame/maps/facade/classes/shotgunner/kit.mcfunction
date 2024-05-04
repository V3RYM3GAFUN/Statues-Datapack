tag @s add shotgunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

loot replace entity @s hotbar.0 loot statues:items/facade/classes/shotgunner/shotgun
loot replace entity @s hotbar.1 loot statues:items/facade/classes/shotgunner/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Shotgunner\'s helmet"}'},SkullOwner: {Id: [I; 1246757609, -563001642, -2058751332, -311473162], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhmZTU5MzViMmIzMjAyOWZiODY2ZTFhOTY2ODNmOWI4MDhkMzVkZDljZDNhNzY5NDU1MzRkYmQwZWM0MWNhOSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Shotgunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor