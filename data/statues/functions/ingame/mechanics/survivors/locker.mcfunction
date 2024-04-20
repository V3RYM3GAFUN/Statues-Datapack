tag @s remove hidden
execute if entity @e[tag=locker,distance=..0.5] run tag @s add hidden
effect give @s[tag=hidden] blindness infinite 0 true
effect clear @s[tag=!hidden] blindness
