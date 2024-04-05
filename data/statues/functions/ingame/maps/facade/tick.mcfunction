execute as @a[tag=trapper] at @s run function statues:ingame/maps/facade/classes/trapper/abilities
execute as @a[tag=cloaker] at @s run function statues:ingame/maps/facade/classes/cloaker/abilities
execute as @a[tag=medic] at @s run function statues:ingame/maps/facade/classes/medic/abilities
execute as @a[tag=rusher] at @s run function statues:ingame/maps/facade/classes/rusher/abilities
execute as @a[tag=soldier] at @s run function statues:ingame/maps/facade/classes/soldier/abilities
execute as @a[tag=tank] at @s run function statues:ingame/maps/facade/classes/tank/abilities
execute as @a[tag=pusher] at @s run function statues:ingame/maps/facade/classes/pusher/abilities
execute as @a[tag=recon] at @s run function statues:ingame/maps/facade/classes/recon/abilities
execute as @a[tag=shotgunner] at @s run function statues:ingame/maps/facade/classes/shotgunner/abilities

#> Objective tracking
execute if score $Objective Statues.Data matches 0 run data modify storage statues:data objective_text set value '{"text":"Find backup generator key and unlock the door","color":"aqua"}'
execute if score $Objective Statues.Data matches 0 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 1 run data modify storage statues:data objective_text set value '{"text":"Turn on the generator","color":"gold"}'
execute if score $Objective Statues.Data matches 1 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 2 run data modify storage statues:data objective_text set value '{"text":"Find lab access keycard in Archive room","color":"green"}'
execute if score $Objective Statues.Data matches 2 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 3 run data modify storage statues:data objective_text set value '{"text":"Press the button ","color":"green"}'
execute if score $Objective Statues.Data matches 3 run data modify storage statues:data objective_floor set value -1
execute if score $Objective Statues.Data matches 4 run data modify storage statues:data objective_text set value '{"text":"Head down the labs and turn on the main power","color":"yellow"}'
execute if score $Objective Statues.Data matches 4 run data modify storage statues:data objective_floor set value -2
execute if score $Objective Statues.Data matches 5 run data modify storage statues:data objective_text set value '{"text":"Search labs for keycard and unlock door (top floor)","color":"white","bold":true}'
execute if score $Objective Statues.Data matches 5 run data modify storage statues:data objective_floor set value -3
execute if score $Objective Statues.Data matches 6 run data modify storage statues:data objective_text set value '{"text":"Find the confidential book and escape!","color":"red","bold":true}'
execute if score $Objective Statues.Data matches 6 run data modify storage statues:data objective_floor set value 1

#> Generator room unlock
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] on target if predicate statues:holding_facade_genkey run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the backup generator door!","color":"aqua"}]
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] on target if predicate statues:holding_facade_genkey run function statues:ingame/maps/facade/objectives/genkey
execute as @e[type=minecraft:interaction,tag=objective_facade_genkey] run data remove entity @s interaction

#> Lab access room unlock
execute as @e[type=minecraft:interaction,tag=objective_facade_labkey] on target if predicate statues:holding_facade_labkey run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the access to the labs!","color":"aqua"}]
execute as @e[type=minecraft:interaction,tag=objective_facade_labkey] on target if predicate statues:holding_facade_labkey run function statues:ingame/maps/facade/objectives/labkey
execute as @e[type=minecraft:interaction,tag=objective_facade_labkey] run data remove entity @s interaction

#> Power on detection
execute at @e[tag=objective_power] if block ~ ~ ~ crimson_button[powered=true] run function statues:ingame/maps/facade/objectives/main_power
execute if score $Objective Statues.Data matches 5.. run scoreboard players remove $Core.Ticks Statues.Data 1
execute if score $Core.Ticks Statues.Data matches 0 run playsound minecraft:entity.warden.nearby_closer master @a -4 83 322 5 0
execute if score $Core.Ticks Statues.Data matches ..0 run scoreboard players set $Core.Ticks Statues.Data 40


#> High class office unlock
execute as @e[type=minecraft:interaction,tag=objective_facade_highclasskey] on target if predicate statues:holding_facade_highclass run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the high class offices!","color":"aqua"}]
execute as @e[type=minecraft:interaction,tag=objective_facade_highclasskey] on target if predicate statues:holding_facade_highclass run function statues:ingame/maps/facade/objectives/highclasskey
execute as @e[type=minecraft:interaction,tag=objective_facade_highclasskey] run data remove entity @s interaction

# tag @e[tag=objective_triggered] remove objective_triggered

#> Countdown for monster spawn delay (before they can actually chase survivors)
execute if score $MonsterSpawnDelay Statues.Data matches 0.. run scoreboard players remove $MonsterSpawnDelay Statues.Data 1
execute if score $MonsterSpawnDelay Statues.Data matches 0 run tellraw @a {"text": "The survivors are no longer safe...","bold": true,"color": "red"}
execute if score $MonsterSpawnDelay Statues.Data matches 0 as @a at @s run playsound minecraft:entity.enderman.stare master @s ~ ~ ~ 1 .75