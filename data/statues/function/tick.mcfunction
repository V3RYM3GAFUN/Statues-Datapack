function #statues:game_events/server/tick
execute as @a at @s run function #statues:game_events/player/tick
execute if score $Status Statues.DynamicData matches 0 run function #statues:game_events/lobby/tick
execute if score $Status Statues.DynamicData matches 1 run function #statues:game_events/queue/tick
execute if score $Status Statues.DynamicData matches 2 run function #statues:game_events/pregame/tick
execute if score map_tick Statues.FeatureFlags matches 1 if score $Status Statues.DynamicData matches 3 run function #statues:game_events/map/tick
execute if score map_tick Statues.FeatureFlags matches 1 if score $Status Statues.DynamicData matches 3 if score $Map Statues.DynamicData matches 0 run function #statues:game_events/map/facade_tick
execute if score map_tick Statues.FeatureFlags matches 1 if score $Status Statues.DynamicData matches 3 if score $Map Statues.DynamicData matches 1 run function #statues:game_events/map/lockdown_tick
execute if score map_tick Statues.FeatureFlags matches 1 if score $Status Statues.DynamicData matches 3 if score $Map Statues.DynamicData matches 2 run function #statues:game_events/map/origins_tick
function #statues:game_events/server/tick_end