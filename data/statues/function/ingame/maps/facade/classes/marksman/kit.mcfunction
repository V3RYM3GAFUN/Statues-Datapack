tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/marksman/sniper_rifle
loot replace entity @s hotbar.1 loot statues:items/classes/marksman/sniper_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.marksman.helmet"}',profile={id:[I;-21530089,-992393454,-1370318747,1865408282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.lodestone_compass.lock"},item_name='{"translate":"statues.item.marksman.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.marksman.ability.lore.line1","italic":false}]','[{"translate":"statues.item.marksman.ability.lore.line2","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"3"},{"text": "30"}]}]'],item_model="statues:survivors/abilities/xray"]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"tide",material:"gold"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"sentry",material:"gold"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.marksman.outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"host",material:"gold"}]

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Marksman Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor