
## Hiding mechanic using intereaction entity

execute as @a[tag=!Hiding] at @s run scoreboard players set @s Statues.Heartbeat 25
execute as @a[tag=Hiding] at @s run effect give @s blindness 2 0 true

execute as @e[type=minecraft:interaction,tag=Hide] at @s on target run tp @s[tag=!Hiding,team=Survivor] ~ ~.75 ~
execute as @e[type=minecraft:interaction,tag=Hide] at @s on target run tag @s[team=Survivor,tag=!Hiding] add Hiding
execute as @e[type=minecraft:interaction,tag=Hide] run data remove entity @s interaction
execute as @a[tag=Hiding] at @s run scoreboard players remove @s Statues.Heartbeat 1

execute as @e[type=minecraft:interaction,tag=Exit] at @s on target run tp @s[tag=Hiding] ~ ~2.15 ~
execute as @e[type=minecraft:interaction,tag=Exit] at @s on target run tag @s[tag=Hiding] remove Hiding
execute as @e[type=minecraft:interaction,tag=Exit] run data remove entity @s interaction

## Hiding mechanic using a vehicle to ride on
# execute as @a[nbt=!{RootVehicle:{Entity:{Tags:["Hide"]}}},team=Survivor,tag=Hiding] run tag @s remove Hiding
#
# execute as @a[tag=!Hiding] run scoreboard players set @s Statues.Heartbeat 25
# execute as @a[nbt={RootVehicle:{Entity:{Tags:["Hide"]}}},team=Survivor,tag=!Hiding] run tag @s add Hiding
# execute as @a[tag=Hiding] run scoreboard players remove @s Statues.Heartbeat 1
#
# execute as @a[tag=Hiding] run effect give @s blindness 2 0 true

execute as @a at @s if score @s Statues.Heartbeat matches 0 run playsound entity.warden.heartbeat ambient @s ~ ~ ~ 5 0.5
execute as @a at @s if score @s Statues.Heartbeat matches 0 run scoreboard players set @s Statues.Heartbeat 25
