#> Clears everything the player might've had if playing a game, teleports them to lobby and sets their spawn there.
clear @s
effect clear @s
tag @s remove queued
tp @s 0.5 0.5 0.5 0 0
spawnpoint @s 0 0 0 0
#> In case the player left in spectator
gamemode adventure @s

#> The effect to have in lobby (Instant health in case the player didn't have full HP)
effect give @s instant_health 1 100 true
effect give @s saturation infinite 100 true

#> In case the player was a monster
tag @s remove monster1
tag @s remove monster2

tag @s remove monster_chosen

#> Remove all survivor tags
tag @a remove solo
tag @a remove cloaker
tag @a remove medic
tag @a remove juggernaut
tag @a remove runner
tag @a remove shotgunner
tag @a remove gunner
tag @a remove brawler
tag @a remove marksman
tag @a remove trapper

tag @s remove class_selected

#> To avoid adding a vote from the previous game to be carried on
tag @s remove vote_facade
tag @s remove vote_lockdown
tag @s remove vote_origins

tag @s remove win

team join Lobby @s

#> Other potential needs
scoreboard players reset @s Statues.Monsters
scoreboard players reset @s Statues.Survivors
scoreboard players reset @s Statues.Data

scoreboard players set @s Statues.Dead 0
scoreboard players set @s Player.Leave 0