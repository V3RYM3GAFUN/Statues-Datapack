scoreboard players set $HasInteraction Statues.Data 0
execute on target run scoreboard players set $HasInteraction Statues.Data 1
execute if score $HasInteraction Statues.Data matches 1 run function statues:ingame/mechanics/interactions/interaction_handler