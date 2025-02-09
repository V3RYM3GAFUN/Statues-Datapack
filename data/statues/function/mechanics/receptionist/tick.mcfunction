execute unless function statues:feature_flags/check_receptionist_flags run return fail

rotate @e[type=armor_stand,tag=npc_receptionist,x=0,limit=1] 180 0
execute as @e[type=armor_stand,tag=npc_receptionist,x=0,limit=1] at @s anchored eyes run rotate @s facing entity @p[distance=..5,gamemode=!spectator,tag=!queued] eyes
data modify storage statues:temp Head set value [0f,0f,0f]
data modify storage statues:temp Head[0] set from entity @e[type=armor_stand,tag=npc_receptionist,x=0,limit=1] Rotation[1]
data modify entity @e[type=armor_stand,tag=npc_receptionist,x=0,limit=1] Pose.Head set from storage statues:temp Head
