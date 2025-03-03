execute as @a[dx=1.5,dy=0.25,dz=1.5,tag=!raycaster,gamemode=!spectator,team=!Survivor,team=!Dev] positioned ~-1 ~-1 ~-1 if entity @s[dx=1.5,dy=0.25,dz=1.5] positioned ~1 ~1 ~1 run function statues:ingame/mechanics/raycasting/collide/strong_ammo

scoreboard players add $RaycastDistance Statues.Raycast 1

particle dust{color:[0.0,0.7,1.0],scale:0.5} ~ ~ ~ 1.5 0.25 1.5 0 1

execute if score $RaycastDistance Statues.Raycast matches ..150 positioned ^ ^ ^0.15 rotated ~ ~ if block ~ ~ ~ #statues:raycast_pass run function statues:ingame/mechanics/raycasting/raycast/shotguns/strong_ammo