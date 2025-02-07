tag @s add cloaker
tag @s add class_selected
scoreboard players set @s Statues.Players 0

attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/cloaker/anti_anomaly_gun
loot replace entity @s hotbar.1 loot statues:items/classes/cloaker/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.cloaker.helmet","italic":false,"color":"dark_purple","bold":true}',profile={id:[I;-923212898,-166312604,-1112508036,2065471715],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmEwM2IzNWQ0NDg1MGNiNDJiMDAwMTdhZGRiN2Y4NWVhYWMyNGI1NmEwY2Q1MWNhMWNhYzIyYjZlYjQyM2UxMSJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:30},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.enderman.teleport"},custom_model_data={strings:["cloak"]},item_name='{"translate":"statues.item.cloaker.ability.name","italic":false,"color":"dark_purple"}',lore=['[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.30sec"}]}]']]


item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.cloaker.outfit","italic":false,"color":"dark_purple","bold":true}]',dyed_color={rgb:8991416,show_in_tooltip:0b}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Cloaker Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor