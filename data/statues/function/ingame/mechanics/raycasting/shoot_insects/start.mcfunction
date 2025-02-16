advancement revoke @s only statues:guns/insects
tag @s add raycaster

playsound entity.bee.hurt hostile @a ~ ~ ~ 2 1
execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_insects/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast

execute if items entity @s weapon *[custom_data~{insect_launcher:true}] run return run function statues:ingame/mechanics/raycasting/shoot_insects/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_insects/reset {hand:"offhand"}