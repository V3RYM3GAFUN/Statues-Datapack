execute as @a[team=Survivor] at @s run playsound block.enchantment_table.use block @s

effect give @a[team=Survivor] regeneration 10 2 true
tellraw @a[team=Survivor] [{"translate": "statues.tell.medic.used_ability","with": [{"selector":"@s"}]}]

loot give @s loot statues:items/classes/medic/nanobots

advancement revoke @s only statues:abilities/survivors/medic