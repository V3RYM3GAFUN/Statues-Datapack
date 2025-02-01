#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 1
scoreboard players display numberformat @s Statues.Monsters fixed {"text":"001: \"The Elephant\"","color": "dark_gray"}
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 001
effect give @s slowness infinite 1 true
effect give @s strength infinite 0 true 

#> General armour
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b}]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b}]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b}]

#> Armour and weapons specific to 001
item replace entity @s armor.head with stick[custom_model_data={strings:["elephant"]}]
item replace entity @s weapon.mainhand with trident[unbreakable={show_in_tooltip:0b},enchantments={levels:{loyalty:3},show_in_tooltip:0b},custom_name='[{"text":"Tentacle","italic":false,"color":"dark_red","bold":true}]',custom_data={custom_model_data:1}] 1
item replace entity @s weapon.offhand with trident[unbreakable={show_in_tooltip:0b},enchantments={levels:{loyalty:3},show_in_tooltip:0b},custom_name='[{"text":"Tentacle","italic":false,"color":"dark_red","bold":true}]',custom_data={custom_model_data:1}]

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.001 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster