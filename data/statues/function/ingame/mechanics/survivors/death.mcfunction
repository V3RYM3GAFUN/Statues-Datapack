#> Survivor death mechanic
# Sets the spawnpoint of the survivor so they can keep watching after death
spawnpoint @s ~ ~ ~ ~

# Puts the dead player in spectator and adds them to team
tellraw @a [{"translate":"statues.game.death","color":"red","with": [{"selector":"@s","color":"red"}]}]
gamemode spectator
team join Spectator

#> Objective Item Drop
# Copy Objective Item to shulker box
# data modify block 0 -60 0 Items append from entity @s Inventory[{tag:{objective_item:1b}}]
data modify block 0 -60 0 Items append from entity @s Inventory[{custom_data:{objective_item:1b}}]

# Drop the actual items
execute at @s run loot spawn ~ ~ ~ mine 0 -60 0 minecraft:air[custom_data={drop_contents:1b}]

# Clear out shulker box for next player
data modify block 0 -60 0 Items set value []

function statues:reset_player_tags
xp set @s 0 points
xp set @s 0 levels

# Clear player's inventory now that they've died
clear @s

effect give @s night_vision infinite 0 true

# Reset death counter
scoreboard players set @s Statues.Dead 0

scoreboard players reset @s Statues.Survivors
