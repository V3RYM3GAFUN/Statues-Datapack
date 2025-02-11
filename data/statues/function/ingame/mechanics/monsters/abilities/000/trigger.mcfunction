clear @s
effect give @s invisibility 10 0 true
effect give @s weakness 10 255 true

loot give @s loot statues:items/monsters/abilities/000

schedule function statues:ingame/mechanics/monsters/abilities/000/reset 10s replace

advancement revoke @s only statues:abilities/monsters/000