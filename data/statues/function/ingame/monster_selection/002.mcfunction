#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 2
scoreboard players display numberformat @s Statues.Monsters fixed {"text":"002: \"The Sharp\"","color": "gold"}
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 002
attribute @s movement_speed base set 0.20
effect give @s blindness infinite 0 true 

#> General armour and weapons
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b}]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b}]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b}]

#> Armour and weapons specific to 002
item replace entity @s armor.head with jack_o_lantern
item replace entity @s weapon.offhand with iron_sword[unbreakable={},custom_name='[{"text":"Blade","italic":false,"color":"gold","bold":true}]',custom_data={custom_model_data:1}]
give @s iron_sword[unbreakable={},custom_name='[{"text":"Blade","italic":false,"color":"gold","bold":true}]',custom_data={custom_model_data:1}]

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.002 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster