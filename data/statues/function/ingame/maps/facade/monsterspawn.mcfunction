#> Force survivors who haven't chosen a class to spawn with a random available class
execute as @e[type=marker,tag=facade_survivor_classes,sort=random] at @s if block ~ ~ ~ light_weighted_pressure_plate run tp @r[tag=!class_selected,team=Survivor] ~ ~ ~

#> Teleport Monsters to the map
execute as @e[tag=facade_monster_tp,type=marker] at @s run tp @a[team=Monster,tag=monster_chosen] ~ ~ ~ ~ 0
execute as @e[tag=monster_text,type=text_display] run data modify entity @s text set value '{"text": ""}'

execute store result score $Ingame.Alive Statues.TempData if entity @a[team=Survivor]
execute if score $Ingame.Alive Statues.TempData matches 1 run tellraw @a {"translate": "statues.game.monsters_spawned.1survivor","bold": true,"color": "red"}
execute unless score $Ingame.Alive Statues.TempData matches 1 run tellraw @a {"translate": "statues.game.monsters_spawned","bold": true,"color": "red"}
execute as @a at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.25 0