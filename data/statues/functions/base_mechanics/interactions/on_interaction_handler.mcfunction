scoreboard players set $HasInteraction Statues.TempData 0
execute on target run scoreboard players set $HasInteraction Statues.TempData 1
execute if score $HasInteraction Statues.TempData matches 1 run function statues:base_mechanics/interactions/interaction_handler