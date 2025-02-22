tag @s add runner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s speed infinite 0 true
effect give @s weakness infinite 100 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/runner/anti_anomaly_gun
loot replace entity @s hotbar.1 loot statues:items/classes/runner/weak_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.runner.helmet"}',profile={id:[I;1884695747,2089828402,-1981234289,-443642655],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE5YWYwYjhhZDYwNzFkM2I1MTllMTI0NWIxNjQzZmJhNjQ0ZDE5MTc3MTIwM2M0YTA1OTY4ZjE3NmM5YWEwOSJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.bat.takeoff"},custom_model_data={strings:["dopamine"]},item_name='{"translate":"statues.item.runner.ability.name","italic":false,"color":"aqua"}',lore=['[{"translate":"statues.item.runner.ability.lore.line1","italic":false}]','[{"translate":"statues.item.runner.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.5min"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.runner.outfit","italic":false,"color":"dark_aqua","bold":true}]',dyed_color={rgb:3949738,show_in_tooltip:0b},trim={pattern:"shaper",material:"lapis"}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Runner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor