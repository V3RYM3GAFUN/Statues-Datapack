tag @s add juggernaut
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 4 true
effect give @s slowness infinite 0 true
effect give @s instant_health 5 10 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/juggernaut/anti_anomaly_rifle
loot replace entity @s hotbar.1 loot statues:items/facade/classes/juggernaut/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar

loot replace entity @s hotbar.5 loot statues:items/facade/classes/juggernaut/potion_armor
loot replace entity @s inventory.0 loot statues:items/facade/classes/juggernaut/potion_armor
loot replace entity @s inventory.1 loot statues:items/facade/classes/juggernaut/potion_armor

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Juggernaut\'s helmet"}'},SkullOwner: {Id: [I; -1600956670, 1044270905, -1222486736, 787363462], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ4ZWIzMzE5YTMyNWQ5M2Y1OTQzNTRmMWM0N2VkZDgwYjhjODJlN2NjMjdlNTZhOWI5NGVhZjgyZDcyNTFiNSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:raiser,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Juggernaut Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor