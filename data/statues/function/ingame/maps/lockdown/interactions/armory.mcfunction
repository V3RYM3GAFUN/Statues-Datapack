#> Armoury keycard pickup detection
execute on target if predicate statues:lockdown/holding_armory_key run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.armory.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute on target if predicate statues:lockdown/holding_armory_key run function statues:ingame/maps/lockdown/objectives/armorydoor

#  execute as @e[tag=lockdown_armory,tag=!opened]