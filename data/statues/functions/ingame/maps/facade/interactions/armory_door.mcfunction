#> Armoury keycard pickup detection
execute on target if predicate statues:holding_facade_genkey run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the armoury!","color":"aqua"}]
execute on target if predicate statues:holding_facade_armory run function statues:ingame/maps/facade/objectives/armorydoor

#  execute as @e[tag=facade_armory,tag=!opened]