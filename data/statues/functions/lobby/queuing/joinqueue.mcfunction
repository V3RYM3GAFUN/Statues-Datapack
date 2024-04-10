tag @s add queued
# Replace @e with @a after testing
execute store result score $QueuedCount Statues.DynamicData if entity @e[tag=queued]

tag @s remove tutorial
tellraw @s [{"text": "You are queued in!","color": "green","bold": true}]
tellraw @a [{"selector": "@s","color": "aqua"},{"text":" is ready for briefing! (","color": "aqua"},{"score":{"name":"$QueuedCount","objective":"Statues.DynamicData"},"color": "aqua"},{"text": "/4-11)", "color": "aqua"}]
execute as @a at @s run playsound block.beehive.enter master @s ~ ~ ~ 0.7 1.5