# input <score $XpBarPm Statues.TempData> ‰ scaled by 1000
scoreboard players operation $XpBarPmCalc Statues.TempData = $XpBarPm Statues.TempData
scoreboard players operation $XpBarPmCalc Statues.TempData *= $8841 Statues.Constants
scoreboard players operation $XpBarPmCalc Statues.TempData /= $1000 Statues.Constants
xp set @s 1000 levels
execute store result storage statues:data xp_bar.points int 1 run scoreboard players get $XpBarPmCalc Statues.TempData
function statues:mechanics/xp_bar/set_points with storage statues:data xp_bar
xp set @s 0 levels