#> Armoury keycard pickup detection
execute on target if predicate statues:holding_facade_armory run tellraw @a[team=!Monster] [{"translate":"statues.game.facade.objective.armoryunlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:holding_facade_armory run function statues:ingame/maps/facade/objectives/armorydoor

#  execute as @e[tag=facade_armory,tag=!opened]