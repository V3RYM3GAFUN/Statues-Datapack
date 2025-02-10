#> Clears everything the player might've had if playing a game, teleports them to lobby and sets their spawn there.
clear @s
effect clear @s
tag @s remove queued
function statues:warps/newlobby
execute in minecraft:overworld run spawnpoint @s ~ ~ ~ 180
#> In case the player left in spectator
gamemode adventure @s

#> The effect to have in lobby (Instant health in case the player didn't have full HP)
effect give @s instant_health 1 100 true
effect give @s saturation infinite 100 true

#> Reset attributes
attribute @s movement_speed base reset
attribute @s jump_strength base reset
attribute @s fall_damage_multiplier base set 0
attribute @s knockback_resistance modifier remove statues:no_knockback
attribute @s movement_speed modifier remove statues:super_quick
attribute @s step_height modifier remove statues:step
attribute @s attack_damage modifier remove statues:damage
attribute @s scale base reset

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
