execute unless function statues:feature_flags/check_elevator_flags run return fail
scoreboard players set @a Statues.ElevatorPlayerStates 0
execute as @e[type=minecraft:marker,tag=elevator_button] at @s run function statues:ingame/mechanics/elevator/tick_button with entity @s data
execute if score elevator_3x3x3 Statues.FeatureFlags matches 1 as @e[type=minecraft:item_display,tag=elevator_room_3x3x3] at @s run function statues:ingame/mechanics/elevator/3x3x3/tick
execute if score elevator_2x3x2 Statues.FeatureFlags matches 1 as @e[type=minecraft:item_display,tag=elevator_room_2x3x2] at @s run function statues:ingame/mechanics/elevator/2x3x2/tick
execute if score elevator_freight Statues.FeatureFlags matches 1 as @e[type=minecraft:item_display,tag=elevator_room_freight] at @s run function statues:ingame/mechanics/elevator/freight/tick
