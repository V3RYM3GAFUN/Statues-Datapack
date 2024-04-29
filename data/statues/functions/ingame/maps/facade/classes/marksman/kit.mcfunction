tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/marksman/sniper_rifle
loot replace entity @s hotbar.1 loot statues:items/facade/classes/marksman/sniper_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Marksman\'s helmet"}'},SkullOwner: {Id: [I; -21530089, -992393454, -1370318747, 1865408282], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:tide,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:sentry,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:host,material:gold},display:{color:1908001,Name:'["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]'},Unbreakable:1,HideFlags:196}

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Marksman Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/pick_class_survivor