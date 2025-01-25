#> High class office unlock
execute on target if predicate statues:holding_facade_highclass run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the high class offices!","color":"aqua"}]
execute on target if predicate statues:holding_facade_highclass run function statues:ingame/maps/facade/objectives/highclasskey
