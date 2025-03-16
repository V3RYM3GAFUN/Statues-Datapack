data modify storage statues:data spectator_location set from entity @s Pos
execute store result score $SpectatorXTo Statues.TempData run data get storage statues:data spectator_location[0] 10
execute store result score $SpectatorYTo Statues.TempData run data get storage statues:data spectator_location[1] 10
execute store result score $SpectatorZTo Statues.TempData run data get storage statues:data spectator_location[2] 10
kill @s