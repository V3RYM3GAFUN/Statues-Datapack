#> High class office unlock
execute on target if predicate statues:holding_facade_highclass run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.highclass.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:holding_facade_highclass run function statues:ingame/maps/facade/objectives/highclasskey
