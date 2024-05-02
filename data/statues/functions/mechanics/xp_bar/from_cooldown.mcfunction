$scoreboard players set $XpBarMax Statues.TempData $(max)
scoreboard players operation $XpBarPm Statues.TempData = @s Statues.Players
scoreboard players operation $XpBarPm Statues.TempData *= $1000 Statues.Constants
scoreboard players operation $XpBarPm Statues.TempData /= $XpBarMax Statues.TempData
function statues:mechanics/xp_bar/from_pm
scoreboard players operation $XpBarProgress Statues.TempData = @s Statues.Players
scoreboard players operation $XpBarProgress Statues.TempData /= $20 Statues.Constants
execute store result storage statues:data xp_bar.levels int 1 run scoreboard players get $XpBarProgress Statues.TempData
function statues:mechanics/xp_bar/set_levels with storage statues:data xp_bar