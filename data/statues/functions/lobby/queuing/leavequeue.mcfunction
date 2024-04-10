tag @s remove queued
# Replace @e with @a after testing
execute store result score $QueuedCount Statues.DynamicData if entity @e[tag=queued]

tellraw @s {"text": "You are no longer queued in!", "color": "red","bold": true}
tellraw @a [{"selector": "@s","color": "aqua"},{"text":" left the briefing room (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/4-11)", "color": "aqua"}]
execute as @a at @s run playsound block.beehive.exit master @s ~ ~ ~ 0.7 0.75