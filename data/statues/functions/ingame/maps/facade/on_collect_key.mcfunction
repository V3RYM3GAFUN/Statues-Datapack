$execute if entity @s[tag=found_key_$(item_objective_id)] run return 0
$scoreboard players set $KeyId Statues.GameEventData $(item_objective_id)
execute if score $KeyId Statues.GameEventData matches 0 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Generator Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 1..3 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Lab Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 4..6 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.HighClass Statues.GameEventEnum
execute if score $KeyId Statues.GameEventData matches 7 run scoreboard players operation $KeyKind Statues.GameEventData = $KeyKind.Book Statues.GameEventEnum
$tag @s add found_key_$(item_objective_id)
function statues:game_events/find_key