tag @s add trapper
tag @s add class_selected
scoreboard players set @s Statues.Players 0

loot replace entity @s hotbar.0 loot statues:items/classes/trapper/trappers_gun

loot replace entity @s hotbar.1 loot statues:items/classes/trapper/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.4 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.3 loot statues:items/classes/trapper/trap

item replace entity @s armor.head with player_head[custom_name='{"translate":"statues.item.trapper.helmet"}',profile={id:[I;14048913,-651933933,-1852222465,-1836681993],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzFlNTViYWJmMWU3NWM5Y2ZkM2Q4ODc1YTRmMTcyNzNhMDE0YjhmYTc2OGMzNWM0N2VlYWI2N2MzMjg0OTBkMSJ9fX0="}]}]

item replace entity @s hotbar.4 with minecraft:blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:block.conduit.deactivate"},custom_model_data={strings:["emp_shock"]},custom_name='{"translate":"statues.item.trapper.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.trapper.ability.lore.line1","italic":false}]','[{"translate":"statues.item.trapper.ability.lore.line2","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.3m30s"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.trapper.outfit","italic":false,"color":"#993300","bold":true}]',dyed_color={rgb:8606770,show_in_tooltip:0b}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Trapper Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor