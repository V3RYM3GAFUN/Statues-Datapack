execute as @a[team=Survivor] at @s run playsound block.enchantment_table.use block @s

effect give @a[team=Survivor] regeneration 10 2 true
tellraw @a[team=Survivor] [{"selector":"@s"},{"text": " used healing nanobots on the team!"}]

advancement revoke @s only statues:abilities/survivors/medic