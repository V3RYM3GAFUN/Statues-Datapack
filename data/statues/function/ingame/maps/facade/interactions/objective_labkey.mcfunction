#> Lab access room unlock
execute on target if predicate statues:holding_facade_labkey run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.lab.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:holding_facade_labkey run function statues:ingame/maps/facade/objectives/labkey
