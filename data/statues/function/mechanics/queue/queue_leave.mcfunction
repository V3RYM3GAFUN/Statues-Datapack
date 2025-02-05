execute unless function statues:feature_flags/check_queue_flags run return fail

tag @s remove queued
# Replace @e with @a after testing
execute store result score $QueuedCount Statues.DynamicData if entity @e[tag=queued]

tellraw @s {"translate": "statues.lobby.queue.out", "color": "red","bold": true}
execute if score dev_no_start_requirement Statues.FeatureFlags matches 1.. run tellraw @a [{"selector": "@s","color": "aqua"},{"translate":"statues.lobby.queue.out.public","color": "aqua"},{"text": " (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/1+)", "color": "aqua"}]
execute unless score dev_no_start_requirement Statues.FeatureFlags matches 1.. run tellraw @a [{"selector": "@s","color": "aqua"},{"translate":"statues.lobby.queue.out.public","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/4-11)", "color": "aqua"}]
execute as @a at @s run playsound block.beehive.exit master @s ~ ~ ~ 0.7 0.75