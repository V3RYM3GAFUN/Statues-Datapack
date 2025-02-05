tag @s add medic
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 1 true
effect give @s instant_health 5 10 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/medic/medic_pistol
loot replace entity @s hotbar.1 loot statues:items/classes/medic/adrenaline_injected_dart
loot replace entity @s hotbar.2 loot statues:items/classes/medic/weak_anti_anomaly_ammo

loot replace entity @s hotbar.3 loot statues:items/crowbar
loot replace entity @s hotbar.4 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.5 loot statues:items/classes/medic/potion_stim
loot replace entity @s inventory.0 loot statues:items/classes/medic/potion_stim
loot replace entity @s inventory.1 loot statues:items/classes/medic/potion_stim

item replace entity @s armor.head with minecraft:player_head[custom_name='{"translate":"statues.item.medic.helmet","italic": false,"bold":true}',profile={id:[I;-594457970,305677288,-1560644513,1098618845],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2NlYjYxZjVlOWE0ZDM2ZDY2ZmI5NTE2ZTI3MjA4OTA3NDI2MzY4NWE0MzBhZmYyZmYyNTk3OGEyN2U3MzRmMCJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.stone.step"},custom_model_data={strings:["nanobots"]},custom_name='{"translate":"statues.item.medic.ability.name","italic":false,"color":"red"}',lore=['[{"translate":"statues.item.medic.ability.lore.line1","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.5min"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},custom_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"sentry",material:"emerald"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},custom_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"wayfinder",material:"emerald"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},custom_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"snout",material:"emerald"}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Medic Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor