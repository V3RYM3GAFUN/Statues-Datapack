#> Generator room unlock
execute on target if predicate statues:holding_facade_genkey run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.gen.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:holding_facade_genkey run function statues:ingame/maps/facade/objectives/genkey