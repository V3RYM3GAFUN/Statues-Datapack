execute unless function statues:feature_flags/check_floors_flags run return fail
execute store result score @s Statues.Floor run data get entity @e[tag=floor_marker,sort=nearest,limit=1] data.floor
execute store result score $FloorObj Statues.Data run data get storage statues:data objective_floor
scoreboard players operation $FloorDiff Statues.Data = $FloorObj Statues.Data
scoreboard players operation $FloorDiff Statues.Data -= @s Statues.Floor
execute if score $FloorDiff Statues.Data matches 0 run title @s actionbar [{"text":"The objective is on your floor","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.Data matches 0 run return 1
execute if score $FloorDiff Statues.Data matches 1.. run title @s actionbar [{"text":"The objective is ","color":"white"},{"score":{"name":"$FloorDiff","objective":"Statues.Data"}},{"text":" floor(s) above you","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.Data matches 1.. run return 1
scoreboard players operation $FloorDiff Statues.Data *= $-1 Statues.Data
execute if score $FloorDiff Statues.Data matches 1.. run title @s actionbar [{"text":"The objective is ","color":"white"},{"score":{"name":"$FloorDiff","objective":"Statues.Data"}},{"text":" floor(s) below you","color":"white"},{"text":" | Objective: ","color":"white"},{"storage":"statues:data","nbt":"objective_text","interpret":true}]
execute if score $FloorDiff Statues.Data matches 1.. run return 1
