execute if entity @e[tag=locker,distance=..0.5] run tag @s add hidden
execute if entity @e[tag=locker,distance=..0.5] run effect give @s blindness infinite 0 true

execute unless entity @e[tag=locker,distance=..0.5] run tag @s remove hidden
execute unless entity @e[tag=locker,distance=..0.5] run effect clear @s blindness
