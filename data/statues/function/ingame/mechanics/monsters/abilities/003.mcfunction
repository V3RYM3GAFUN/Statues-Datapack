loot give @s loot statues:items/monsters/abilities/003 

execute as @a[team=Survivor] if score @s Statues.Survivors matches ..19 run effect give @s glowing 5 0 true

advancement revoke @s only statues:abilities/monsters/003