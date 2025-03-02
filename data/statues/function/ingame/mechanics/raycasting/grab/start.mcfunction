advancement revoke @s only statues:abilities/monsters/001
tag @s add raycaster

playsound entity.evoker_fangs.attack hostile @a ~ ~ ~ 1 1
execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/grab/tick

tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast

execute if items entity @s weapon *[custom_data~{001_ability:true}] run return run function statues:ingame/mechanics/raycasting/grab/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/grab/reset {hand:"offhand"}