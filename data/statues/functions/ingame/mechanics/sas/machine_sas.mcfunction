execute if entity @s[tag=!triggered] if entity @a[distance=..2,gamemode=!spectator] run scoreboard players set @s Statues.Data 50
execute if entity @s[tag=!triggered] if entity @a[distance=..2,gamemode=!spectator] run tag @s add triggered
execute if score @s Statues.Data matches 50 run playsound minecraft:block.piston.extend ambient @a ~ ~ ~ 1 1

execute if score @s Statues.Data matches -51.. at @e[tag=machine_sas_doordx] run fill ~ ~ ~ ~1 ~1 ~ iron_block replace air
execute if score @s Statues.Data matches -51.. at @e[tag=machine_sas_doordz] run fill ~ ~ ~ ~ ~1 ~1 iron_block replace air

execute if score @s Statues.Data matches -119.. run scoreboard players remove @s Statues.Data 1
execute if score @s Statues.Data matches 0 run particle minecraft:cloud ~ ~1 ~ 1.2 1 1.2 .1 200 normal @a
execute if score @s Statues.Data matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~ ~ ~ 1 0

execute if entity @s[tag=triggered] if score @s Statues.Data matches -50 run playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1
execute if score @s Statues.Data matches ..-50 at @e[tag=machine_sas_doordx] run fill ~ ~ ~ ~1 ~1 ~ air replace iron_block
execute if score @s Statues.Data matches ..-50 at @e[tag=machine_sas_doordz] run fill ~ ~ ~ ~ ~1 ~1 air replace iron_block

execute if score @s Statues.Data matches -120 run tag @s remove triggered