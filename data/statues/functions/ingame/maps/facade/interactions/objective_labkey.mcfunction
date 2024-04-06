#> Lab access room unlock
execute on target if predicate statues:holding_facade_labkey run tellraw @a[team=!Monster] ["",{"bold":true,"selector":"@s"},{"text":" has unlocked the access to the labs!","color":"aqua"}]
execute on target if predicate statues:holding_facade_labkey run function statues:ingame/maps/facade/objectives/labkey
