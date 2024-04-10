tellraw @a[team=Dev] {"text":"---- Statistics ----","color":"gold"}

scoreboard players set $Statistics Statues.TempData 0
execute as @e[tag=door] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"Door Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]

scoreboard players set $Statistics Statues.TempData 0
execute as @e[tag=doord] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"Door Display Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]

scoreboard players set $Statistics Statues.TempData 0
execute as @e[tag=power_door] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"Power Door Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]

scoreboard players set $Statistics Statues.TempData 0
execute as @e[tag=game_lamp] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"Light Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]

scoreboard players set $Statistics Statues.TempData 0
execute as @e[tag=vent] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"Vent Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]


tellraw @a[team=Dev] [{"text":"Entity Type Counts:","color":"aqua"}]

scoreboard players set $Statistics Statues.TempData 0
execute as @e[type=marker] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"- Marker Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]
scoreboard players set $Statistics Statues.TempData 0
execute as @e[type=armor_stand] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"- Armor Stand Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]
scoreboard players set $Statistics Statues.TempData 0
execute as @e[type=block_display] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"- Block Display Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]
scoreboard players set $Statistics Statues.TempData 0
execute as @e[type=item_display] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"- Item Display Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]
scoreboard players set $Statistics Statues.TempData 0
execute as @e[type=text_display] run scoreboard players add $Statistics Statues.TempData 1
tellraw @a[team=Dev] [{"text":"- Text Display Count: ","color":"aqua"},{"color":"gold","score":{"name":"$Statistics","objective":"Statues.TempData"}}]

tellraw @a[team=Dev] {"text":"---- Statistics ----","color":"gold"}