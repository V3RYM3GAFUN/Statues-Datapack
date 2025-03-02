#> Lab access room unlock
execute on target if predicate statues:facade/holding_lab_key run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.lab.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:facade/holding_lab_key run function statues:ingame/maps/facade/objectives/labkey
