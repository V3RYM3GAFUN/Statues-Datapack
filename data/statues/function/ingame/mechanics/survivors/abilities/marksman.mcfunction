playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
effect give @s glowing 6 0 true
effect give @e[team=Monster] glowing 12 0 true
tellraw @a [{"selector":"@s"},{"text":" used an X-ray on the monsters!"}]

advancement revoke @s only statues:abilities/survivors/marksman