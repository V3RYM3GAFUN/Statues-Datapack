tag @s add shotgunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun","italic":false}]'},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:2}],HideFlags:1,CustomModelData:3}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:60,show_particles:0b},{id:"minecraft:slowness",duration:120,amplifier:2,show_particles:0b}]} 48

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Shotgunner\'s helmet"}'},SkullOwner: {Id: [I; 1246757609, -563001642, -2058751332, -311473162], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjhmZTU5MzViMmIzMjAyOWZiODY2ZTFhOTY2ODNmOWI4MDhkMzVkZDljZDNhNzY5NDU1MzRkYmQwZWM0MWNhOSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.legs with leather_leggings{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}
item replace entity @s armor.feet with leather_boots{display:{color:16701501,Name:'["",{"text":"Shotgunner Outfit","italic":false,"color":"gold","bold":true}]'},Unbreakable:1,HideFlags:68}

item replace entity @s weapon.offhand with stick{flashlight:1b,CustomModelData:7,display:{Name:'{"text":"Flashlight","italic": false}'}}

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Shotgunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function statues:game_events/pick_class_survivor