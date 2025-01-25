#> Generator room unlock
execute on target if predicate statues:holding_facade_genkey run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the backup generator door!","color":"aqua"}]
execute on target if predicate statues:holding_facade_genkey run function statues:ingame/maps/facade/objectives/genkey