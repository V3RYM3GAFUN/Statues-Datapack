execute as @e[tag=sas_1x2,tag=sas_dz] at @s positioned ~-3 ~-1 ~ as @e[dx=6,dy=1,dz=0,type=marker,tag=machine_sas_doordz] at @s run function statues:mechanics/sas/dz/1x2/open
execute as @e[tag=sas_1x2,tag=sas_dx] at @s positioned ~ ~-1 ~-3 as @e[dx=0,dy=1,dz=6,type=marker,tag=machine_sas_doordx] at @s run function statues:mechanics/sas/dx/1x2/open

execute as @e[tag=objective_lockdown_override,type=text_display] run data merge entity @s {text:'{"text":"","color":"red"}',shadow:true,background:0}

scoreboard players add $Objective Statues.DynamicData 1

function statues:utils/button_crimson_to_warped