tag @s add brawler
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 2 true
effect give @s instant_health 5 10 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/brawler/stun_baton

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Brawler\'s helmet"}'},SkullOwner: {Id: [I; -662616329, -1973991523, -1808312113, 1763872922], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQyNWVjZDA2ODQ3ZTQ5OGE4OWU0MmE2M2RlOGEwNzI3MzNjYjQ1ODZjYjMwMThkODM5NTExZDYwNjBmZjk0YyJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:dune,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:tide,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:diamond},display:{color:11546150,Name:'["",{"text":"Brawler Outfit","italic":false,"color":"dark_red","bold":true}]'},Unbreakable:1,HideFlags:196}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Brawler Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor