#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 4
scoreboard players display numberformat @s Statues.Monsters fixed {"translate":"statues.score.004","color": "white"}
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true
attribute @s jump_strength base set 0
attribute @s knockback_resistance modifier add statues:no_knockback 1 add_value
attribute @s fall_damage_multiplier base set 0
attribute @s step_height modifier add statues:step 0.75 add_value

#> Stats specific to 004
attribute @s attack_damage modifier add statues:damage -1 add_multiplied_base

#> General armour
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.8 loot statues:items/dynamic_map_survivor

#> Items specific to 004
item replace entity @s armor.head with stick[item_name='{"translate": "statues.item.004.head","bold": true,"italic": false,"color": "white"}',item_model="statues:monsters/skeleton",enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s weapon.mainhand loot statues:items/monsters/004

# item replace entity @s hotbar.4 with tipped_arrow[item_name='[{"translate":"statues.item.004.weapon","italic":false,"color":"#006633","bold":true}]',potion_contents={custom_color:2325012,custom_effects:[{id:"minecraft:poison",duration:60,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b}]}] 1

loot replace entity @s hotbar.4 loot statues:items/monsters/abilities/004

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.004 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster