#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 1
tag @s add monster_chosen

#> Stats for each monster
effect give @s health_boost infinite 9 true
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 001
effect give @s slowness infinite 1 true
effect give @s strength infinite 1 true 

#> General armour and tools
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}

#> Armour and tools specific to 001
item replace entity @s armor.head with stick{CustomModelData:4}
item replace entity @s weapon.mainhand with trident{Unbreakable:1b,display:{Name:'[{"text":"Tentacle","italic":false,"color":"dark_red","bold":true}]'},Enchantments:[{id:"loyalty",lvl:3}],HideFlags:5} 1
item replace entity @s weapon.offhand with trident{Unbreakable:1b,display:{Name:'[{"text":"Tentacle","italic":false,"color":"dark_red","bold":true}]'},Enchantments:[{id:"loyalty",lvl:3}],HideFlags:5} 1