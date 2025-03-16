execute unless function statues:feature_flags/check_receptionist_flags run return fail

rotate @s 180 0
execute at @s anchored eyes run rotate @s facing entity @p[distance=..5,gamemode=!spectator,tag=!queued] eyes
data modify storage statues:temp Head set value [0f,0f,0f]
data modify storage statues:temp Head[0] set from entity @s Rotation[1]
data modify entity @s Pose.Head set from storage statues:temp Head
