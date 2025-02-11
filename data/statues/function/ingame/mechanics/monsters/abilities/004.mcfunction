loot give @s loot statues:items/monsters/abilities/004

execute positioned ~-5.5 ~ ~-5.5 run effect give @a[dx=10,dy=2,dz=10,team=Survivor] poison 10 0 true
particle entity_effect{color:[0.0,0.5,0.0,1.0]} ~ ~ ~ 10 2 10 0 1000 normal @a

advancement revoke @s only statues:abilities/monsters/004