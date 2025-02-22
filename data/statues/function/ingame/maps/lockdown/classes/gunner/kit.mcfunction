tag @s add gunner
tag @s add class_selected
scoreboard players set @s Statues.Players 0

attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/gunner/anti_anomaly_gun

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.6 loot statues:items/classes/gunner/strong_anti_anomaly_ammo
loot replace entity @s hotbar.7 loot statues:items/classes/gunner/weak_anti_anomaly_ammo

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.gunner.helmet"}',profile={id:[I;1323198025,-780906790,-1231707086,623294080],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2JiYjA1NTU4N2ZjZjI3ODJkZjUzMjJkZjc2NjNhYWI4NWY4ZGM5NzdlMTI5YTVjNzA1ODc1NTMzNTZmNGZjYiJ9fX0="}]},]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.armor.equip_netherite"},custom_model_data={strings:["ammo"]},item_name='{"translate":"statues.item.ability.name","italic":false,"color":"dark_aqua"}',lore=['[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.3m30s"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.gunner.outfit","italic":false,"color":"dark_green","bold":true}]',dyed_color={rgb:8439583,show_in_tooltip:0b},trim={pattern:"silence",material:"emerald"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.gunner.outfit","italic":false,"color":"dark_green","bold":true}]',dyed_color={rgb:8439583,show_in_tooltip:0b},trim={pattern:"wayfinder",material:"emerald"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.gunner.outfit","italic":false,"color":"dark_green","bold":true}]',dyed_color={rgb:8439583,show_in_tooltip:0b},trim={pattern:"ward",material:"emerald"}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Gunner Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor