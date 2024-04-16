execute if entity @s[tag=!triggered] if entity @a[distance=..2,sort=nearest,limit=1,gamemode=!spectator] run scoreboard players set @s Statues.DynamicData 50
execute if entity @s[tag=!triggered] if entity @a[distance=..2,sort=nearest,limit=1,gamemode=!spectator] run tag @s add triggered
execute if score @s Statues.DynamicData matches 50 run particle minecraft:cloud ~ ~1 ~ 1.2 1 1.2 .1 200 normal
execute if score @s Statues.DynamicData matches 50 run playsound minecraft:block.trial_spawner.place ambient @a ~ ~ ~ 1 0

execute if score @s Statues.DynamicData matches 0.. run scoreboard players remove @s Statues.DynamicData 1
# execute if entity @s[tag=triggered] if score @s Statues.DynamicData matches -50 run playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1

execute unless entity @a[distance=..2,limit=1,gamemode=!spectator] if score @s Statues.DynamicData matches -1 run tag @s remove triggered