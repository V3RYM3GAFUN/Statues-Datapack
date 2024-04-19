tag @r[team=!Monster,tag=queued] add monster1
team join Monster @a[tag=monster1,tag=queued]

tag @r[team=!Monster,tag=queued] add monster2
team join Monster @a[tag=monster2,tag=queued]

tellraw @a [{"selector":"@a[tag=monster1]","bold":true,"color":"red"},{"text":" and ","bold":false,"color":"gold"},{"selector":"@a[tag=monster2]","bold":true,"color":"red"},{"text":" are the monsters!","bold":false,"color":"gold"}]
execute as @a at @s run playsound entity.ender_dragon.ambient master @s ~ ~ ~ 0.70 0.9

effect give @a[team=Monster] glowing 10 0 true

team join Survivor @a[team=!Monster,tag=queued]

#> Prevents players from hitting each other after getting role
effect give @a weakness 16 100 true

#> Allows setting the in-game timer to a custom number [Old version]
#scoreboard players set $Timer.Minutes Statues.DynamicData 1
#scoreboard players set $Timer.Seconds Statues.DynamicData 1
#scoreboard players set $Timer.Ticks Statues.DynamicData 0

#> Allows setting the in-game timer to a custom number [Bossbar version]
scoreboard players set $Timer.Seconds Statues.DynamicData 600