execute unless function statues:feature_flags/check_floors_flags run return fail
execute store result score @s Statues.Floor run data get entity @e[tag=floor_marker,sort=nearest,limit=1] data.floor
execute store result score $FloorObj Statues.TempData run data get storage statues:data objective_floor
scoreboard players operation $FloorDiff Statues.TempData = $FloorObj Statues.TempData
scoreboard players operation $FloorDiff Statues.TempData -= @s Statues.Floor
execute if score $FloorDiff Statues.TempData matches 0 run title @s actionbar [{"text":"The objective is on your floor","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.TempData matches 0 run return 1
execute if score $FloorDiff Statues.TempData matches 1.. run title @s actionbar [{"text":"The objective is ","color":"white"},{"score":{"name":"$FloorDiff","objective":"Statues.TempData"}},{"text":" floor(s) above you","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.TempData matches 1.. run return 1
scoreboard players operation $FloorDiff Statues.TempData *= $-1 Statues.Constants
execute if score $FloorDiff Statues.TempData matches 1.. run title @s actionbar [{"text":"The objective is ","color":"white"},{"score":{"name":"$FloorDiff","objective":"Statues.TempData"}},{"text":" floor(s) below you","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.TempData matches 1.. run return 1
