tag @s add trapper
tag @s add class_selected
scoreboard players set @s Statues.Players 0

attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/trapper_gun_raycast

loot replace entity @s hotbar.1 loot statues:items/classes/trapper/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.5 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.3 loot statues:items/classes/trapper/trap

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.trapper.helmet"}',profile={id:[I;183527404,-589148335,-2024239231,1720157330],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmNlZGVjMDRkMjM4MGNkNzcwMjdmOWQ0NDQ1NWM5OGI3ZWRjNWY2NjRjYTBkZDMwYTYxMDY5MDM5MTUzOTFkYiJ9fX0="}]}]

loot replace entity @s hotbar.4 loot statues:items/classes/trapper/emp

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Trapper Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor