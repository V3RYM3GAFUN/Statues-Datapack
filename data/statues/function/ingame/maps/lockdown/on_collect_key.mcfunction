$execute if entity @s[tag=found_key_$(item_objective_id)] run return 0
$scoreboard players set $KeyId Statues.GameEventData $(item_objective_id)

execute if score $KeyId Statues.GameEventData matches 0..5 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Fuel Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 6..8 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Keycard1 Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 9..10 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Keycard2 Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 11..13 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Code Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 14..18 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Armory Statues.GameEventEnum

$tag @s add found_key_$(item_objective_id)
function #statues:game_events/ingame/find_key