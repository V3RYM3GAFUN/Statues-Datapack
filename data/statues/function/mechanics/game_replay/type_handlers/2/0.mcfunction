execute unless function statues:feature_flags/check_game_replay_flags run return fail
scoreboard players set $Status Statues.DynamicData 3
scoreboard players set $Map Statues.DynamicData 0
scoreboard players set $Timer.Seconds Statues.DynamicData 600
forceload add 54 257 -82 394
function #statues:game_events/ingame/game_start
function statues:ingame/maps/facade/activate