execute if entity @s[tag=!door_finished] run tag @s remove door_req_open
execute if entity @s[tag=!door_finished] run tag @s remove door_req_close
execute if entity @s[tag=!door_anim_open,tag=!door_anim_close] run scoreboard players reset @s Statues.DoorData

execute if entity @s[y_rotation=0] run function statues:ingame/mechanics/doors/tick_door_r0
execute if entity @s[y_rotation=90] run function statues:ingame/mechanics/doors/tick_door_r90
execute if entity @s[y_rotation=180] run function statues:ingame/mechanics/doors/tick_door_r180
execute if entity @s[y_rotation=270] run function statues:ingame/mechanics/doors/tick_door_r270

execute if entity @s[tag=door_req_open,tag=!door_animating] run tag @s add door_anim_open
execute if entity @s[tag=door_anim_open,tag=!door_animating] run function statues:ingame/mechanics/doors/door_anim_open
execute if entity @s[tag=door_anim_open] run tag @s add door_animating
execute if entity @s[tag=door_anim_open] run scoreboard players add @s Statues.DoorData 1
execute if entity @s[tag=door_anim_open,scores={Statues.DoorData=3..}] run tag @s add door_opened
execute if entity @s[tag=door_anim_open,scores={Statues.DoorData=3..}] run scoreboard players reset @s Statues.DoorData

execute if entity @s[tag=door_opened] run tag @s remove door_anim_open

execute if entity @s[tag=door_opened,tag=door_req_close] run tag @s remove door_anim_open
execute if entity @s[tag=door_opened,tag=door_req_close] run tag @s add door_anim_close
execute if entity @s[tag=door_opened,tag=door_req_close] run tag @s remove door_opened

execute if entity @s[tag=door_anim_close] unless score @s Statues.DoorData matches -2147483648..2147483647 run function statues:ingame/mechanics/doors/door_anim_close
execute if entity @s[tag=door_anim_close] run tag @s add door_animating
execute if entity @s[tag=door_anim_close] run scoreboard players add @s Statues.DoorData 1
execute if entity @s[tag=door_anim_close,scores={Statues.DoorData=3..}] run tag @s remove door_animating
execute if entity @s[tag=door_anim_close,scores={Statues.DoorData=3..}] run tag @s remove door_anim_close

execute if entity @s[tag=door_finished] run kill @s