#> Escape book detection
execute on target if predicate statues:holding_facade_book run scoreboard players set $Objective Statues.Data 11
execute if score $Objective Statues.Data matches 11 run function statues:ingame/maps/facade/objectives/escape 
