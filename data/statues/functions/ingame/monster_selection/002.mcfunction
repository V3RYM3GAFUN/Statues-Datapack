#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 2
scoreboard players display numberformat @s Statues.Monsters fixed {"text":"002: \"The Sharp\"","color": "gold"}
tag @s add 002
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 002
attribute @s generic.movement_speed base set 0.20
effect give @s blindness infinite 0 true 

#> General armour and weapons
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}

#> Armour and weapons specific to 002
item replace entity @s armor.head with jack_o_lantern
item replace entity @s weapon.offhand with iron_sword{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Blade","italic":false,"color":"gold","bold":true}]'}}
give @s iron_sword{CustomModelData:1,Unbreakable:1b,display:{Name:'[{"text":"Blade","italic":false,"color":"gold","bold":true}]'}}

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.002 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster