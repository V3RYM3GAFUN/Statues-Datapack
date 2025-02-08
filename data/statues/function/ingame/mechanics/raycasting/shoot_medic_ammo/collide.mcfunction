scoreboard players set $RaycastDistance Statues.Raycast 500

effect give @s instant_health 1 1 true
effect give @s regeneration 10 1 true
effect give @s speed 5 1 true
effect give @s resistance 10 1 true

tellraw @s {"text": "You've been healed!","color": "green"}