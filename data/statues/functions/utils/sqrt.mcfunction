scoreboard players operation $sqrtX Statues.Data += $sqrtI Statues.Data
scoreboard players add $sqrtResult Statues.Data 1
scoreboard players add $sqrtI Statues.Data 2
execute if score $distance Statues.Data > $sqrtX Statues.Data run function statues:utils/sqrt
