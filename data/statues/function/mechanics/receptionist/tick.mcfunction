#> Not implemented
# execute unless function statues:feature_flags/check_receptionist_flags run return fail

execute as @e[tag=look_at_player] at @s anchored eyes facing entity @p[gamemode=!spectator,distance=..5,tag=!queued] eyes run tp @s ~ ~ ~ ~ ~
data modify storage statues:temp Head set value [0f,0f,0f]
execute as @e[tag=look_at_player] run data modify storage statues:temp Head[0] set from entity @s Rotation[1]
execute as @e[tag=look_at_player] run data modify entity @s Pose.Head set from storage statues:temp Head