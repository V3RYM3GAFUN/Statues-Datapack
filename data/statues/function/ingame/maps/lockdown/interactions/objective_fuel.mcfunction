#> Armoury keycard pickup detection
execute on target if predicate statues:lockdown/holding_fuel run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.fuel","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:lockdown/holding_fuel run function statues:ingame/maps/lockdown/objectives/fuel_use