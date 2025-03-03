tag @s add medic
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 1 true
effect give @s instant_health 5 10 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/medic_gun/medic_ammo
loot replace entity @s hotbar.1 loot statues:items/classes/medic/adrenaline_injected_dart
loot replace entity @s hotbar.2 loot statues:items/classes/medic/weak_anti_anomaly_ammo

loot replace entity @s hotbar.3 loot statues:items/crowbar
loot replace entity @s hotbar.8 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.5 loot statues:items/classes/medic/potion_stim_food
# loot replace entity @s inventory.0 loot statues:items/classes/medic/potion_stim
# loot replace entity @s inventory.1 loot statues:items/classes/medic/potion_stim

item replace entity @s armor.head with minecraft:player_head[item_name='{"translate":"statues.item.medic.helmet","italic": false,"bold":true}',profile={id:[I;-235476552,-1627697789,-1277141513,389390304],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQwYjBkZjA4ZjgwYjdlZGUwNWYxMjgzMmIyNmQ4ZGI3MWI2NGU5MjcyNTBiOWZiZDc1Y2UxOTFmODgxYTY5OSJ9fX0="}]},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b,equippable={slot:head,camera_overlay:"statues:misc/flashlight_overlay"}]

loot replace entity @s hotbar.4 loot statues:items/classes/medic/nanobots

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"sentry",material:"emerald"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"wayfinder",material:"emerald"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='{"translate":"statues.item.medic.outfit","italic":false,"bold":true}',dyed_color={rgb:16777215,show_in_tooltip:0b},trim={pattern:"snout",material:"emerald"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Medic Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor