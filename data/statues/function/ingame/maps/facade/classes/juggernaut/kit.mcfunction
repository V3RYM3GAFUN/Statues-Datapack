tag @s add juggernaut
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 4 true
effect give @s slowness infinite 0 true
effect give @s instant_health 5 10 true

loot replace entity @s hotbar.0 loot statues:items/facade/classes/juggernaut/anti_anomaly_rifle
loot replace entity @s hotbar.1 loot statues:items/facade/classes/juggernaut/strong_anti_anomaly_ammo

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

loot replace entity @s hotbar.5 loot statues:items/facade/classes/juggernaut/potion_armor
loot replace entity @s inventory.0 loot statues:items/facade/classes/juggernaut/potion_armor
loot replace entity @s inventory.1 loot statues:items/facade/classes/juggernaut/potion_armor

item replace entity @s armor.head with player_head[custom_name='{"translate":"statues.item.juggernaut.helmet","italic":false,"color":"gray","bold":true}',profile={id:[I;-1600956670,1044270905,-1222486736,787363462],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ4ZWIzMzE5YTMyNWQ5M2Y1OTQzNTRmMWM0N2VkZDgwYjhjODJlN2NjMjdlNTZhOWI5NGVhZjgyZDcyNTFiNSJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:block.conduit.deactivate"},custom_model_data={strings:[""]},custom_name='{"translate":"statues.item.juggernaut.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.3m30s"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"raiser",material:"iron"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"wayfinder",material:"iron"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},custom_name='[{"translate":"statues.item.juggernaut.outfit","italic":false,"color":"gray","bold":true}]',dyed_color={rgb:9870729,show_in_tooltip:0b},trim={pattern:"snout",material:"iron"}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Juggernaut Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor