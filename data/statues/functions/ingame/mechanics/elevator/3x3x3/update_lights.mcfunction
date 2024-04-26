$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_status,sort=nearest,limit=1,distance=..10] run data modify entity @s item.id set value "minecraft:red_concrete"
$execute positioned ~ ~$(elevator_location) ~ as @e[tag=elevator_door,sort=nearest,limit=1,distance=..10] at @s run function statues:ingame/mechanics/elevator/3x3x3/door_close with entity @s data
