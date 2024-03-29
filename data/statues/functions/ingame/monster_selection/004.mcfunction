#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 4

#> Stats for each monster
effect give @s health_boost infinite 9 true
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 004
effect give @s darkness infinite 0 true
effect give @s weakness infinite 4 true 

#> General armour and tools
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}

#> Armour and tools specific to 004
item replace entity @s armor.head with skeleton_skull
item replace entity @s weapon.mainhand with crossbow{Unbreakable:1b,display:{Name:'[{"text":"Insect launcher","italic":false,"color":"white","bold":true}]'},Enchantments:[{id:"multishot",lvl:1}]} 1
give @s tipped_arrow{CustomPotionColor:2325012,display:{Name:'[{"text":"Insects","italic":false,"color":"#006633","bold":true}]'},custom_potion_effects:[{id:"minecraft:poison",duration:100,amplifier:0,show_particles:0b,show_icon:0b}]} 128