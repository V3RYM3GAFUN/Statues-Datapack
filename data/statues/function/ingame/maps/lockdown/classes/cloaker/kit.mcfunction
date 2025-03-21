# Teleports the player to the survivor spawn
setblock ~ ~ ~ air replace
execute at @n[type=minecraft:marker,tag=lockdown_survivor_tp] run spreadplayers ~ ~ 3 2 under 86 true @s
rotate @s -90 0

tag @s add cloaker
tag @s add class_selected
scoreboard players set @s Statues.Players 0

attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/anti_anomaly_gun/weak_ammo
loot replace entity @s hotbar.1 loot statues:items/classes/cloaker/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.cloaker.helmet","italic":false,"color":"dark_purple","bold":true}',profile={id:[I;-1588096129,470896178,-1736494308,-995102482],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjFmMzc0MTZlNTI1M2UzZjU0MGVlZTc4MTM3ZDBiNGI5ZThjOWY2YmFmNWRiNjQ2Y2Y5MDY5Y2ZkNGIyOGM0NSJ9fX0="}]},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b,equippable={slot:head,camera_overlay:"statues:misc/flashlight_overlay"}]

loot replace entity @s hotbar.4 loot statues:items/classes/cloaker/cloak

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Cloaker Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor