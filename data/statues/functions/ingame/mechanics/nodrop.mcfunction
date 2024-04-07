execute on origin if entity @s[tag=dev_allow_item_drop] run return 1
execute on origin if entity @s[tag=objective_item] run return 1
data modify entity @s[tag=!processed] Owner set from entity @s Thrower
data merge entity @s[tag=!processed] {NoGravity:1b,PickupDelay:0s}
tag @s add processed

execute on origin run tag @s add itemowner
execute at @a[tag=itemowner,limit=1] run tp @s ~ ~ ~
execute unless entity @a[tag=itemowner,limit=1] run kill
execute on origin run tag @s remove itemowner