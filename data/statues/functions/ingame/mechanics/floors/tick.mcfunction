execute store result score @s Statues.Floor run data get entity @e[tag=floor_marker,sort=nearest,limit=1] data.floor
title @s actionbar [{"text":"The objective is [TODO] floor(s) above/below you","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
