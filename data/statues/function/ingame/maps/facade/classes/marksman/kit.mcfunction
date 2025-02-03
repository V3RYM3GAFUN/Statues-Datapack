tag @s add marksman
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s night_vision infinite 0 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/marksman/sniper_rifle
loot replace entity @s hotbar.1 loot statues:items/facade/classes/marksman/sniper_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[custom_name='{"text":"Marksman\'s helmet"}',profile={id:[I;-21530089,-992393454,-1370318747,1865408282],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWM3YzEzZjNhNGM1OWFkNmJlZmE3ZjQzMmViNDBiODAxMDliZDkwZGNmZDI2MGY4ODY0ZmI0MTZjOTY2ZDc4MCJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.lodestone_compass.lock"},custom_model_data={strings:["x-ray"]},custom_name='{"text":"X-ray","italic":false,"color":"gray"}',lore=['[{"text":"Reveals the monsters,","italic":false}]','[{"text":"but you get revealed too!","italic":false}]','[{"text":"Cooldown: 3m30s","italic":false}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},custom_name='["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"tide",material:"gold"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},custom_name='["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"sentry",material:"gold"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},custom_name='["",{"text":"Marksman Outfit","italic":false,"color":"#666666","bold":true}]',dyed_color={rgb:1908001,show_in_tooltip:0b},trim={pattern:"host",material:"gold"}]

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Marksman Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor