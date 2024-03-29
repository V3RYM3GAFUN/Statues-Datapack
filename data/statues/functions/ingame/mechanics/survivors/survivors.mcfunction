#> Survivor death mechanic
# Sets the spawnpoint of the survivor so they can keep watching after death
spawnpoint @s ~ ~ ~ ~

# Puts the dead player in spectator and adds them to team
tellraw @a [{"selector":"@s","color":"red"},{"text":" has died!","color":"red"}]
gamemode spectator
team join Spectator

#> Objective Item Drop
# Copy Objective Item to shulker box
data modify block 0 -60 0 Items append from entity @s Inventory[{tag:{Tags:["objective"]}}]

# Drop the actual items
execute at @s run loot spawn ~ ~ ~ mine 0 -60 0 minecraft:air{drop_contents:1b}

# Clear out shulker box for next player
data modify block 0 -60 0 Items set value []

# Clear player's inventory now that they've died
clear @s

# Reset death counter
scoreboard players set @s Statues.Dead 0

