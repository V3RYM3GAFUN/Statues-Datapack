# Teleports the player to the survivor spawn
setblock ~ ~ ~ air
execute at @n[type=minecraft:marker,tag=facade_survivor_tp] run spreadplayers ~ ~ 0 2.5 false @s
rotate @s -145 0

tag @s add runner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s speed infinite 0 true
effect give @s weakness infinite 100 true
attribute @s movement_speed modifier add statues:runner 0.01 add_value
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/anti_anomaly_gun/weak_ammo
loot replace entity @s hotbar.1 loot statues:items/classes/runner/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.runner.helmet"}',profile={id:[I;-1925825735,286674216,-1522073039,-1856057337],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmQzNzI4NTc5MzEzMWVkNzU1ZjFiMDA5OGYyOWRkNDEzZDY3NjU2YjYyMDg3Mjg5MzU0OTJiNDliMWQwZDRiYSJ9fX0="}]},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b,equippable={slot:head,camera_overlay:"statues:misc/flashlight_overlay"}]

loot replace entity @s hotbar.4 loot statues:items/classes/runner/adrenaline 

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Runner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor