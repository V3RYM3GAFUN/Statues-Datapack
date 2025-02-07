tag @s add brawler
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 2 true
effect give @s instant_health 5 10 true
attribute @s fall_damage_multiplier base reset

loot replace entity @s hotbar.0 loot statues:items/classes/brawler/stun_baton

loot replace entity @s hotbar.2 loot statues:items/crowbar
loot replace entity @s hotbar.3 loot statues:items/dynamic_map_survivor

item replace entity @s armor.head with player_head[item_name='{"translate":"statues.item.brawler.helmet","color": "red","italic": false,"bold": true}',profile={id:[I;-662616329,-1973991523,-1808312113,1763872922],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmQyNWVjZDA2ODQ3ZTQ5OGE4OWU0MmE2M2RlOGEwNzI3MzNjYjQ1ODZjYjMwMThkODM5NTExZDYwNjBmZjk0YyJ9fX0="}]}]

item replace entity @s hotbar.4 with blaze_rod[use_cooldown={seconds:90},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},custom_model_data={strings:["brawler_ability"]},item_name='{"translate":"statues.item.brawler.ability.name","italic":false,"color":"dark_purple"}',lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.brawler.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.90sec"}]}]']]

item replace entity @s armor.chest with leather_chestplate[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.brawler.outfit","italic":false,"color":"dark_red","bold":true}]',dyed_color={rgb:11546150,show_in_tooltip:0b},trim={pattern:"dune",material:"diamond"}]
item replace entity @s armor.legs with leather_leggings[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.brawler.outfit","italic":false,"color":"dark_red","bold":true}]',dyed_color={rgb:11546150,show_in_tooltip:0b},trim={pattern:"tide",material:"diamond"}]
item replace entity @s armor.feet with leather_boots[unbreakable={show_in_tooltip:0b},item_name='[{"translate":"statues.item.brawler.outfit","italic":false,"color":"dark_red","bold":true}]',dyed_color={rgb:11546150,show_in_tooltip:0b},trim={pattern:"snout",material:"diamond"}]

loot replace entity @s weapon.offhand loot statues:items/flashlight

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Brawler Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/ingame/pick_class_survivor