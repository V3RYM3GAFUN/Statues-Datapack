#> keycard pickup detection
execute on target if predicate statues:lockdown/holding_keycard_1 run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.lab.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]

execute on target if predicate statues:lockdown/holding_keycard_1 run function statues:ingame/maps/common/major_objective

execute on target if predicate statues:lockdown/holding_keycard_1 run function statues:ingame/maps/lockdown/objectives/level1_keycard_use