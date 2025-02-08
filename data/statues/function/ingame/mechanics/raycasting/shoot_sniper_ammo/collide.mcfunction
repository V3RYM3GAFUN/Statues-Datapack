scoreboard players set $RaycastDistance Statues.Raycast 500

effect give @s glowing 15 0 true
effect give @s blindness 5 0 true

tellraw @s {"text": "You have been revealed by a marksman!","color": "gold","bold": true}