scoreboard players operation $sqrtX Statues.TempData += $sqrtI Statues.TempData
scoreboard players add $sqrtResult Statues.TempData 1
scoreboard players add $sqrtI Statues.TempData 2
execute if score $distance Statues.TempData > $sqrtX Statues.TempData run function statues:utils/sqrt
