execute unless function statues:feature_flags/check_elevator_flags run return fail

$scoreboard players set @e[tag=elevator_room_freight,sort=nearest,limit=1] Statues.ElevatorTo $(to)
scoreboard players set @e[tag=elevator_room_freight,sort=nearest,limit=1] Statues.ElevatorState 1

