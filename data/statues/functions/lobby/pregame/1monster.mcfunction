execute unless entity @e[tag=monster1] run tag @e[team=!Monster,tag=queued,sort=random,limit=1] add monster1
team join Monster @e[tag=monster1,tag=queued,sort=random,limit=1]

tellraw @a [{"selector":"@e[tag=monster1]","bold":true,"color":"red"},{"text":" is the monster!","color":"gold"}]
execute as @a at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 0.70 0.9

effect give @e[team=Monster] glowing 10 0 true

team join Survivor @e[team=!Monster,tag=queued]

#> Prevents players from hitting each other after getting role
effect give @a weakness 16 100 true

#> Allows setting the in-game timer to a custom number [Old version]
#scoreboard players set $Timer.Minutes Statues.Data 1
#scoreboard players set $Timer.Seconds Statues.Data 1
#scoreboard players set $Timer.Ticks Statues.Data 0

#> Allows setting the in-game timer to a custom number [Bossbar version]
scoreboard players set $Timer.Seconds Statues.Data 1201