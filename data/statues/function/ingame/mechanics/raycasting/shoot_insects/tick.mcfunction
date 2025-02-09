execute as @a[dx=1,dy=1,dz=1,tag=!raycaster,gamemode=!spectator,team=!Monster,team=!Dev] positioned ~-1 ~-1 ~-1 if entity @s[dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function statues:ingame/mechanics/raycasting/shoot_insects/collide

scoreboard players add $RaycastDistance Statues.Raycast 1

particle dust{color:[0.0,0.5,0.0],scale:0.75} ~ ~ ~ 1 1 1 0 5
playsound entity.bee.hurt hostile @a ~ ~ ~ 0.1 1

execute if score $RaycastDistance Statues.Raycast matches ..500 positioned ^ ^ ^0.15 rotated ~ ~ if block ~ ~ ~ #statues:raycast_pass run function statues:ingame/mechanics/raycasting/shoot_insects/tick