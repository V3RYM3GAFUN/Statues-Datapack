$scoreboard players add $DynamicMapNew Statues.TempData $(floor)
$execute if block ~ $(floor_y) ~ emerald_block run return run scoreboard players add $DynamicMapNew Statues.TempData 100
$execute if block ~ $(floor_y) ~ diamond_block run return run scoreboard players add $DynamicMapNew Statues.TempData 200
$execute if block ~ $(floor_y) ~ gold_block run return run scoreboard players add $DynamicMapNew Statues.TempData 300
