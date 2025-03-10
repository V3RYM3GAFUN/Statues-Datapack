#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 2
scoreboard players display numberformat @s Statues.Monsters fixed {"translate":"statues.score.002","color": "gold"}
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true
attribute @s knockback_resistance modifier add statues:no_knockback 1 add_value
attribute @s jump_strength base set 0
attribute @s fall_damage_multiplier base set 0
attribute @s step_height modifier add statues:step 0.75 add_value

#> Stats specific to 002
attribute @s movement_speed modifier add statues:super_quick 0.1 add_value
effect give @s blindness infinite 0 true
attribute @s scale base set 0.85


#> General armour
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1,swift_sneak:3}},enchantment_glint_override=0b]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.8 loot statues:items/dynamic_map_survivor

#> Items specific to 002
item replace entity @s armor.head with jack_o_lantern[item_name='{"translate": "statues.item.002.head","bold": true,"italic": false,"color": "gold"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.0 loot statues:items/monsters/002
loot replace entity @s weapon.offhand loot statues:items/monsters/002

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.002 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster