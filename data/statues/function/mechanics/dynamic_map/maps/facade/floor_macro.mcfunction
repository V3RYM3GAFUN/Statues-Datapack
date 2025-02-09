execute unless function statues:feature_flags/check_dynamic_map_flags run return fail
$scoreboard players add $DynamicMapNew Statues.TempData $(floor)

$execute if block ~ $(floor_y) ~ redstone_block run return 0
$execute if block ~ $(floor_y) ~ emerald_block run return run scoreboard players add $DynamicMapNew Statues.TempData 1000
$execute if block ~ $(floor_y) ~ diamond_block run return run scoreboard players add $DynamicMapNew Statues.TempData 2000
$execute if block ~ $(floor_y) ~ gold_block run return run scoreboard players add $DynamicMapNew Statues.TempData 3000

# Other blocks: Get previous SCROLL
scoreboard players operation $DynamicMapScroll Statues.TempData = $DynamicMapOld Statues.TempData
scoreboard players remove $DynamicMapScroll Statues.TempData 7420000

scoreboard players operation $DynamicMapScroll Statues.TempData /= $1000 Statues.Constants
scoreboard players operation $DynamicMapScroll Statues.TempData *= $1000 Statues.Constants
scoreboard players operation $DynamicMapNew Statues.TempData += $DynamicMapScroll Statues.TempData