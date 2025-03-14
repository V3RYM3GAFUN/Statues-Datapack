#> keycard pickup detection
execute on target if predicate statues:lockdown/holding_keycard_2 run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.containment.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:lockdown/holding_keycard_2 run function statues:ingame/maps/lockdown/objectives/level2_keycard_use