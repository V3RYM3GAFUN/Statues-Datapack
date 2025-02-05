tag @s add shotgunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/shotgunner/shotgun
loot replace entity @s hotbar.1 loot statues:items/classes/shotgunner/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[custom_name='{"translate":"statues.item.shotgunner.helmet","italic":false,"color":"gold","bold":true}',profile={id:[I;1019336178,-662092771,-1479134873,-1609012075],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGUyY2E1NWIzNDZiNjljNjJiNzI4N2Y5MDlmNGNlOGM5Mjk2MTA1YWZjYjg0MDdmMjBmNzc5NWFlZjc1ODE5YyJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:150},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.enchantment_table.use"},custom_model_data={strings:["rapid_fire_shotgun"]},custom_name='{"translate":"statues.item.shotgunner.ability.name","italic":false}',lore=['[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.2m30s"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.shotgunner.outfit","italic":false,"color":"gold","bold":true}]',dyed_color={rgb:16701501,show_in_tooltip:0b}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.shotgunner.outfit","italic":false,"color":"gold","bold":true}]',dyed_color={rgb:16701501,show_in_tooltip:0b}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.shotgunner.outfit","italic":false,"color":"gold","bold":true}]',dyed_color={rgb:16701501,show_in_tooltip:0b}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Shotgunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor