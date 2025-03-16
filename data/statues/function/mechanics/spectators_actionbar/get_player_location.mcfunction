data modify storage statues:data spectator_location set from entity @s Pos
execute store result score $PythagorasX Statues.TempData run data get storage statues:data spectator_location[0] 10
execute store result score $PythagorasY Statues.TempData run data get storage statues:data spectator_location[1] 10
execute store result score $PythagorasZ Statues.TempData run data get storage statues:data spectator_location[2] 10
kill @s