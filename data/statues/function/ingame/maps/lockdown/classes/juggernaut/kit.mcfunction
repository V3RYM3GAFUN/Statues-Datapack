# Teleports the player to the survivor spawn
setblock ~ ~ ~ air replace
execute at @n[type=minecraft:marker,tag=lockdown_survivor_tp] run spreadplayers ~ ~ 3 2 under 60 true @s
rotate @s -90 0

tag @s add juggernaut
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 4 true
effect give @s slowness infinite 0 true
effect give @s instant_health 5 10 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/rifle/strong_ammo
loot replace entity @s hotbar.1 loot statues:items/classes/juggernaut/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.5 loot statues:items/classes/juggernaut/potion_armor
loot replace entity @s inventory.0 loot statues:items/classes/juggernaut/potion_armor
loot replace entity @s inventory.1 loot statues:items/classes/juggernaut/potion_armor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.juggernaut.helmet","italic":false,"color":"gray","bold":true}',profile={id:[I;-1600956670,1044270905,-1222486736,787363462],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ4ZWIzMzE5YTMyNWQ5M2Y1OTQzNTRmMWM0N2VkZDgwYjhjODJlN2NjMjdlNTZhOWI5NGVhZjgyZDcyNTFiNSJ9fX0="}]},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b,equippable={slot:head,camera_overlay:"statues:misc/flashlight_overlay"}]

loot replace entity @s hotbar.4 loot statues:items/classes/juggernaut/retractable_shield

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"raiser",material:"iron"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"wayfinder",material:"iron"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"snout",material:"iron"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Juggernaut Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor