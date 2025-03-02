#> High class office unlock
execute on target if predicate statues:facade/holding_highclass_key run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.highclass.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
function statues:ingame/maps/common/major_objective
execute on target if predicate statues:facade/holding_highclass_key run function statues:ingame/maps/facade/objectives/highclasskey
