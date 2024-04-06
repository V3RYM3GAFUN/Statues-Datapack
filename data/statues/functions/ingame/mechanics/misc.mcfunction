#> Prevents players from having Absorption if they have no extra health from it
execute as @a if entity @s[nbt={AbsorptionAmount:0f}] run effect clear @s minecraft:absorption

#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

#> Prevent dropping non-objective items 
execute as @e[type=item,nbt=!{Item:{tag:{objective:1b}}}] run function statues:ingame/mechanics/nodrop

#> Prevents items from despawning, notably the key item
execute as @e[type=item] run data modify entity @s Age set value -32768s

#> Prevents players who aren't a survivor from picking up objective items

execute as @e[type=item,nbt={Item:{tag:{objective:1b}}}] at @s run data modify entity @s Owner set from entity @p[team=Survivor] UUID
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] run data merge entity @s {PickupDelay:32767s}
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data merge entity @s {PickupDelay:0s}
# execute as @e[type=item,nbt={Item:{tag:{Tags:["objective"]}}}] at @s if entity @a[team=Survivor,distance=..0.5] run data modify entity @s Owner set from entity @p[team=Survivor] UUID

#> Sas stuff
execute as @e[tag=machine_sas,tag=!triggered] at @s if entity @a[distance=..2,gamemode=!spectator] run scoreboard players set @s Statues.Data 50
execute as @e[tag=machine_sas,tag=!triggered] at @s if entity @a[distance=..2,gamemode=!spectator] run tag @s add triggered
execute as @e[tag=machine_sas] at @s if score @s Statues.Data matches 50 run playsound minecraft:block.piston.extend ambient @a ~ ~ ~ 1 1

execute as @e[tag=machine_sas] if score @s Statues.Data matches -119.. run scoreboard players remove @s Statues.Data 1
execute as @e[tag=machine_sas] at @s if score @s Statues.Data matches 0 run particle minecraft:cloud ~ ~1 ~ 1.2 1 1.2 .1 200 normal @a
execute as @e[tag=machine_sas] at @s if score @s Statues.Data matches 0 run playsound minecraft:block.trial_spawner.place ambient @a ~ ~ ~ 1 0

execute as @e[tag=machine_sas,tag=triggered] at @s if score @s Statues.Data matches -50 run playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1

execute as @e[tag=machine_sas] if score @s Statues.Data matches -120 run tag @s remove triggered

#> Elevator variant
execute as @e[tag=elevator_sas,tag=!triggered] at @s if entity @a[distance=..2,gamemode=!spectator] run scoreboard players set @s Statues.Data 50
execute as @e[tag=elevator_sas,tag=!triggered] at @s if entity @a[distance=..2,gamemode=!spectator] run tag @s add triggered
execute as @e[tag=elevator_sas] at @s if score @s Statues.Data matches 50 run particle minecraft:cloud ~ ~1 ~ 1.2 1 1.2 .1 200 normal @a
execute as @e[tag=elevator_sas] at @s if score @s Statues.Data matches 50 run playsound minecraft:block.trial_spawner.place ambient @a ~ ~ ~ 1 0

execute as @e[tag=elevator_sas] if score @s Statues.Data matches 0.. run scoreboard players remove @s Statues.Data 1
# execute as @e[tag=elevator_sas,tag=triggered] at @s if score @s Statues.Data matches -50 run playsound minecraft:block.piston.contract ambient @a ~ ~ ~ 1 1

execute as @e[tag=elevator_sas] if score @s Statues.Data matches -1 at @s if entity @a[distance=2..,gamemode=!spectator] run tag @s remove triggered