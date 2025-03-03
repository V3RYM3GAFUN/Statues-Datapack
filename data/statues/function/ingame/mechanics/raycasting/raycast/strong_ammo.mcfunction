execute as @a[dx=0,tag=!raycaster,gamemode=!spectator,team=!Survivor,team=!Dev] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] positioned ~.99 ~.99 ~.99 run function statues:ingame/mechanics/raycasting/collide/strong_ammo

scoreboard players add $RaycastDistance Statues.Raycast 1

particle dust{color:[0.0,0.25,1.0],scale:0.2} ~ ~ ~ 0 0 0 0 1

execute if score $RaycastDistance Statues.Raycast matches ..500 positioned ^ ^ ^0.15 rotated ~ ~ if block ~ ~ ~ #statues:raycast_pass run function statues:ingame/mechanics/raycasting/raycast/strong_ammo