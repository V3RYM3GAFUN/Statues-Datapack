scoreboard players set $Objective Statues.DynamicData 0

time set 8000
weather clear

tp @a[team=Monster] @e[type=marker,tag=lockdown_monster_start,limit=1]

scoreboard players set $MonsterSpawnDelay Statues.DynamicData 1800
tellraw @a {"translate": "statues.game.grace_period","bold": true,"color": "aqua"}

#> More than enough to fill up potential lost health
effect give @a[team=Survivor] instant_health 1 5 true

tp @a[team=Survivor] @e[type=marker,tag=lockdown_survivor_start,limit=1]
tag @a[team=Survivor] add has_compass_tracker
