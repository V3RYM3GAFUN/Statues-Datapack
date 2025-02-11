playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
effect give @s glowing 6 0 true
effect give @e[team=Monster] glowing 12 0 true
tellraw @a [{"translate":"statues.tell.marksman.used_ability","with": [{"selector":"@s"}]}]

loot give @s loot statues:items/classes/marksman/xray

advancement revoke @s only statues:abilities/survivors/marksman