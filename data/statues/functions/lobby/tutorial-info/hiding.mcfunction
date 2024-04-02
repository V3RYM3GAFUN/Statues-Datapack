## Hiding mechanic using intereaction entity

execute as @a[tag=!Hiding] at @s run scoreboard players set @s Statues.Heartbeat 25
execute as @a[tag=Hiding] at @s run effect give @s blindness 2 0 true

execute as @e[type=minecraft:interaction,tag=Hide] at @s on target run tp @s[tag=!Hiding,tag=Tutorial] ~ ~.75 ~
execute as @e[type=minecraft:interaction,tag=Hide] at @s on target run tag @s[tag=Tutorial,tag=!Hiding] add Hiding
execute as @e[type=minecraft:interaction,tag=Hide] run data remove entity @s interaction
execute as @a[tag=Hiding] at @s run scoreboard players remove @s Statues.Heartbeat 1

execute as @e[type=minecraft:interaction,tag=Exit] at @s on target run tp @s[tag=Hiding] ~ ~2.15 ~
execute as @e[type=minecraft:interaction,tag=Exit] at @s on target run tag @s[tag=Hiding] remove Hiding
execute as @e[type=minecraft:interaction,tag=Exit] run data remove entity @s interaction


#> tags : [Tutorial_Step2] [Tutorial_Step3] [Tutorial_Step4]