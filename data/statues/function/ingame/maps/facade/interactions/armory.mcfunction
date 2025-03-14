#> Armoury keycard pickup detection
execute on target if predicate statues:facade/holding_armory_key run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.armory.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:facade/holding_armory_key run function statues:ingame/maps/facade/objectives/armorydoor
