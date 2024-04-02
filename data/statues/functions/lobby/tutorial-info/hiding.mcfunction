## hidden mechanic using intereaction entity

execute as @a[tag=!hidden] at @s run scoreboard players set @s Statues.Heartbeat 25
execute as @a[tag=hidden] at @s run effect give @s blindness 2 0 true

execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tp @s[tag=!hidden,tag=Tutorial] ~ ~.75 ~
execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tag @s[tag=Tutorial,tag=!hidden] add hidden
execute as @e[type=minecraft:interaction,tag=hide] run data remove entity @s interaction
execute as @a[tag=hidden] at @s run scoreboard players remove @s Statues.Heartbeat 1

execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tp @s[tag=hidden] ~ ~2.15 ~
execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tag @s[tag=hidden] remove hidden
execute as @e[type=minecraft:interaction,tag=exit] run data remove entity @s interaction


#> tags : [tutorial_step2] [tutorial_step3] [tutorial_step4]