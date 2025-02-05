execute unless function statues:feature_flags/check_queue_flags run return fail

tag @s add queued
# Replace @e with @a after testing
execute store result score $QueuedCount Statues.DynamicData if entity @e[tag=queued]

tag @s remove tutorial
tellraw @s [{"translate": "statues.lobby.queue.in","color": "green","bold": true}]

execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. run tellraw @a [{"translate":"statues.lobby.queue.in.public","color": "aqua","with": [{"selector": "@s","color": "aqua"}]},{"text": " (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/1+)", "color": "aqua"}]

execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. run tellraw @a [{"translate":"statues.lobby.queue.in.public","color": "aqua","with": [{"selector": "@s","color": "aqua"}]},{"text": " (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/4-11)", "color": "aqua"}]
execute as @a at @s run playsound block.beehive.enter master @s ~ ~ ~ 0.7 1.5

function statues:utils/print_self_dev_tags