#> pickup detection
execute on target if predicate statues:lockdown/holding_code run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.code","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]

execute on target if predicate statues:lockdown/holding_code run function statues:ingame/maps/common/major_objective

execute on target if predicate statues:lockdown/holding_code run function statues:ingame/maps/lockdown/objectives/lockdown_codes_use