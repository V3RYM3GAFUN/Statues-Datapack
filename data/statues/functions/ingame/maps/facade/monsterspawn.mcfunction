#> Force survivors who haven't chosen a class to spawn with a random available class
execute as @e[type=marker,tag=facade_survivor_classes,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[tag=!class_selected,team=Survivor] ~ ~ ~

#> Force monsters who haven't chosen a monster to spawn with a random choice
# Was too lazy to add a general "No monster" tag
execute as @e[type=marker,tag=facade_monster_choice,sort=random,limit=1] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[tag=!001,tag=!002,tag=!003,tag=!004,team=Monster] ~ ~ ~

tellraw @a {"text": "The survivors are no longer safe...","bold": true,"color": "red"}
execute as @a at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 .75