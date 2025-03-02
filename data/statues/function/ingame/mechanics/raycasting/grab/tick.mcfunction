execute as @a[dx=1,dy=1,dz=1,tag=!raycaster,gamemode=!spectator,team=!Monster,team=!Dev] positioned ~-1 ~-1 ~-1 if entity @s[dx=1,dy=1,dz=1] positioned ~1 ~1 ~1 run function statues:ingame/mechanics/raycasting/grab/collide

scoreboard players add $RaycastDistance Statues.Raycast 1

particle dust{color:[1.0,0.2,0.0],scale:0.75} ~ ~ ~ 1 1 1 0 5

execute if score $RaycastDistance Statues.Raycast matches ..80 positioned ^ ^ ^0.1 rotated ~ ~ if block ~ ~ ~ #statues:raycast_pass run function statues:ingame/mechanics/raycasting/grab/tick