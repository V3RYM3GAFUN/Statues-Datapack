
## hidden mechanic using interaction entity

execute as @a[tag=hidden] at @s run effect give @s blindness 2 0 true

execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tp @s[tag=!hidden,team=Survivor] ~ ~.75 ~
execute as @e[type=minecraft:interaction,tag=hide] at @s on target run tag @s[team=Survivor,tag=!hidden] add hidden
execute as @e[type=minecraft:interaction,tag=hide] run data remove entity @s interaction

execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tp @s[tag=hidden] ~ ~2.15 ~
execute as @e[type=minecraft:interaction,tag=exit] at @s on target run tag @s[tag=hidden] remove hidden
execute as @e[type=minecraft:interaction,tag=exit] run data remove entity @s interaction

## hidden mechanic using a vehicle to ride on
# execute as @a[nbt=!{RootVehicle:{Entity:{Tags:["hide"]}}},team=Survivor,tag=hidden] run tag @s remove hidden
#
# execute as @a[tag=!hidden] run scoreboard players set @s Statues.Heartbeat 25
# execute as @a[nbt={RootVehicle:{Entity:{Tags:["hide"]}}},team=Survivor,tag=!hidden] run tag @s add hidden
# execute as @a[tag=hidden] run scoreboard players remove @s Statues.Heartbeat 1
#
# execute as @a[tag=hidden] run effect give @s blindness 2 0 true
