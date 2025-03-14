#> Armoury keycard pickup detection
execute if entity @s[tag=!opened] on target if predicate statues:lockdown/holding_armory_key run tellraw @a[team=!Monster] [{"translate":"statues.game.lockdown.objective.armory.unlock","color":"aqua","with": [{"bold":true,"selector":"@s"}]}]
execute if entity @s[tag=!opened] on target if predicate statues:lockdown/holding_armory_key run function statues:ingame/maps/lockdown/objectives/armorydoor
