#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 0
scoreboard players display numberformat @s Statues.Monsters fixed {"translate":"statues.score.000","color": "dark_gray"}
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

#> Stats specific to 000
attribute @s movement_speed modifier add statues:super_quick 0.4 add_value
attribute @s entity_interaction_range modifier add extra_reach 0.5 add_value
attribute @s attack_damage modifier add statues:damage 2 add_value
attribute @s scale base set 0.9

#> General armour
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.8 loot statues:items/dynamic_map_survivor

#> Items specific to 001
item replace entity @s armor.head with wither_skeleton_skull[item_name='{"translate": "statues.item.000.head","color": "#2e2e2e","bold": true,"italic": false}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.4 loot statues:items/monsters/abilities/000

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.000 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster