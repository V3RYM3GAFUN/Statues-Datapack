scoreboard players operation $TotalSeconds Statues.TempData = $RunningGameTicks Statues.DynamicData
scoreboard players operation $TotalSeconds Statues.TempData /= $20 Statues.StaticData
$tellraw @a[team=Dev] [{"text":"["},{"score":{"name":"$TotalSeconds","objective":"Statues.TempData"}},{"text":"s] Game event: ","extra":$(message)}]
$tellraw @a[team=Spectator,tag=dev_see_game_events] [{"text":"["},{"score":{"name":"$TotalSeconds","objective":"Statues.TempData"}},{"text":"s] Game event: ","extra":$(message)}]
$tellraw @a[team=Lobby,tag=dev_see_game_events] [{"text":"["},{"score":{"name":"$TotalSeconds","objective":"Statues.TempData"}},{"text":"s] Game event: ","extra":$(message)}]
