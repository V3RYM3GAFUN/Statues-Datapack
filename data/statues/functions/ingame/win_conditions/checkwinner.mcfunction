
#> Else, monsters win
execute unless score dev_allow_empty_game Statues.FeatureFlags matches 1.. unless entity @a[tag=win] run function statues:ingame/win_conditions/monstervictory

#> Check if anyone has won, and deny monster victory
execute if entity @a[tag=win] run function statues:ingame/win_conditions/survivorvictory