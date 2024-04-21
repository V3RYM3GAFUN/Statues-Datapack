#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 4
scoreboard players display numberformat @s Statues.Monsters fixed "004"
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 004
effect give @s darkness infinite 0 true
effect give @s weakness infinite 4 true 

#> General armour and weapons
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}

#> Armour and weapons specific to 004
item replace entity @s armor.head with skeleton_skull
item replace entity @s weapon.mainhand with crossbow{CustomModelData:4,Unbreakable:1b,display:{Name:'[{"text":"Insect launcher","italic":false,"color":"white","bold":true}]'},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:1}]} 1
item replace entity @s hotbar.4 with tipped_arrow{CustomPotionColor:2325012,display:{Name:'[{"text":"Insects","italic":false,"color":"#006633","bold":true}]'},custom_potion_effects:[{id:"minecraft:poison",duration:60,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b}]} 1

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.004 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function statues:game_events/pick_monster