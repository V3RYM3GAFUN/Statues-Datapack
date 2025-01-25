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

function statues:reset_player_tags
xp set @s 0 points
xp set @s 0 levels

tag @s[team=!Dev] remove has_compass_tracker

team join Lobby @s

#> Other potential needs
scoreboard players reset @s Statues.Monsters
scoreboard players reset @s Statues.Survivors
scoreboard players reset @s Statues.DynamicData

scoreboard players set @s Statues.Dead 0
scoreboard players set @s Player.Leave 0

# temporary
function statues:warps/newlobby