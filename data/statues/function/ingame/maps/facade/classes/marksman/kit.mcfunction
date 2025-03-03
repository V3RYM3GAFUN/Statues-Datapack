# Teleports the player to the survivor spawn
setblock ~ ~ ~ air
execute at @n[type=minecraft:marker,tag=facade_survivor_tp] run spreadplayers ~ ~ 0 2.5 false @s
rotate @s -90 0

tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/weapons/sniper/sniper_ammo
loot replace entity @s hotbar.1 loot statues:items/classes/marksman/sniper_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.marksman.helmet"}',profile={id:[I;-21530089,-992393454,-1370318747,1865408282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]},equippable={slot:head,camera_overlay:"statues:misc/green_phosphorus"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.4 loot statues:items/classes/marksman/xray

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"tide",material:"gold"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"sentry",material:"gold"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"host",material:"gold"},enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Marksman Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor