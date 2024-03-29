# probably nothing important if these are the tags, so just don't run anything after this
execute if entity @s[tag=door_req_close,tag=!door_req_open,tag=!door_animating,tag=!door_anim_open,tag=!door_anim_close,tag=!door_anim_open,tag=!door_anim_close,tag=!door_finished] run return 0

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