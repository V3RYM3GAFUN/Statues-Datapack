#> Prevents items from despawning, notably the key item
data modify entity @s Age set value -32768s

tag @s[predicate=statues:is_objective_item] add objective_item

scoreboard players reset * Statues.Drop
