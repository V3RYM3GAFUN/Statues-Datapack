#> Escape book detection
execute on target if predicate statues:holding_facade_book run scoreboard players set $Objective Statues.DynamicData 11
execute if score $Objective Statues.DynamicData matches 11 run function statues:ingame/maps/facade/objectives/escape
