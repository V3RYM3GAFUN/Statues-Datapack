effect give @a[team=Monster,distance=..15] slowness 5 6 true
effect give @a[team=Monster,distance=..15] blindness 5 3 true
effect give @s slowness 7 4 true
effect give @s darkness 5 3 true
tellraw @a [{"translate":"statues.tell.trapper.used_ability","with": [{"selector": "@s"}]}]

loot give @s loot statues:items/classes/trapper/emp

advancement revoke @s only statues:abilities/survivors/trapper