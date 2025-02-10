execute unless function statues:feature_flags/check_game_replay_flags run return fail
scoreboard players set $Status Statues.DynamicData 3
scoreboard players set $Map Statues.DynamicData 0
scoreboard players set $Timer.Seconds Statues.DynamicData 600
execute in statues:maps/facade run forceload add 52 26 -403 64
function #statues:game_events/ingame/game_start
execute in statues:maps/facade run function statues:ingame/maps/facade/activate
execute as @e[tag=game_replay_entity] run function statues:warps/facade