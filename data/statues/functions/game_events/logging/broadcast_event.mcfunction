scoreboard players operation $TotalSeconds Statues.TempData = $RunningGameTicks Statues.DynamicData
scoreboard players operation $TotalSeconds Statues.TempData /= $20 Statues.Constants
tag @a[team=Dev] add show_game_event
tag @a[team=Spectator,tag=dev_see_game_events] add show_game_event
tag @a[team=Lobby,tag=dev_see_game_events] add show_game_event
execute if score $IsDevGame Statues.DynamicData matches 1.. run tag @a[tag=dev_see_game_events] add show_game_event
$tellraw @a[tag=show_game_event] [{"text":"["},{"score":{"name":"$TotalSeconds","objective":"Statues.TempData"}},{"text":"s] Game event: ","extra":$(message)}]
tag @a remove show_game_event
