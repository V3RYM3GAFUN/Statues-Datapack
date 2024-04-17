#> Force survivors who haven't chosen a class to spawn with a random available class
execute as @e[type=marker,tag=facade_survivor_classes,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[tag=!class_selected,team=Survivor] ~ ~ ~

execute as @e[tag=facade_monster_tp] at @s run tp @a[team=Monster,tag=monster_chosen] ~ ~ ~

tellraw @a {"text": "The survivors are no longer safe...","bold": true,"color": "red"}
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 0