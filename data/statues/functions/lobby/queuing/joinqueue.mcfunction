tag @s add queued
# Replace @e with @a after testing
execute store result score $QueuedCount Statues.Data if entity @e[tag=queued]

tellraw @s [{"text": "You are queued in!","color": "green","bold": true}]
tellraw @a [{"selector": "@s","color": "aqua"},{"text":" is ready for briefing (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.Data"},"color": "aqua"},{"text": "/11)", "color": "aqua"}]
tellraw @a {"text": "[Minimum required: 4]","color": "aqua"}
execute as @a at @s run playsound block.beehive.enter master @s ~ ~ ~ 0.7 1.5