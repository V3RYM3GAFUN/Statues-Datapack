gamemode adventure @s[tag=!dev_ignore_forced_gamemode,team=Survivor]
gamemode adventure @s[tag=!dev_ignore_forced_gamemode,team=Lobby]
gamemode adventure @s[tag=!dev_ignore_forced_gamemode,team=Monster]
gamemode spectator @s[tag=!dev_ignore_forced_gamemode,team=Spectator]

execute if score dev_auto_convert_lights Statues.FeatureFlags matches 1 if entity @s[team=Dev] run function statues:debug/lights/create_light_auto

scoreboard players set @a[team=Dev] Player.Leave 0