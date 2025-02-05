scoreboard players operation $Timer.RemainingSeconds Statues.TempData = $MonsterSpawnDelay Statues.DynamicData
scoreboard players add $Timer.RemainingSeconds Statues.TempData 10
scoreboard players operation $Timer.RemainingSeconds Statues.TempData /= $20 Statues.Constants
execute store result storage statues:data remaining_seconds int 1 run scoreboard players get $Timer.RemainingSeconds Statues.TempData
function statues:ingame/maps/common/warptimer_bossbar with storage statues:data
execute store result bossbar statues:warptimer value run scoreboard players get $MonsterSpawnDelay Statues.DynamicData
bossbar set statues:warptimer players @a[team=!Survivor]
bossbar set statues:warptimer visible true
