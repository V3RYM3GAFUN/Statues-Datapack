execute unless function statues:feature_flags/check_map_tick_flags run return fail

execute as @a[scores={Statues.Barrels=1..}] at @s run function statues:ingame/maps/common/barrel_click
execute as @a[tag=hidden,team=Survivor] at @s run function #statues:game_events/tick_hiding