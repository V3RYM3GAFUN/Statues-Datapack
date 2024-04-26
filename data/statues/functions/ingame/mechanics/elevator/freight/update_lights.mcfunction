$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=2,distance=..5] run data modify entity @s item.id set value "minecraft:red_concrete"
$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_door,sort=nearest,limit=2,distance=..6] at @s run function statues:ingame/mechanics/elevator/freight/door_close with entity @s data
