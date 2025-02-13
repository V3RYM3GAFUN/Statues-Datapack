scoreboard players set $RaycastDistance Statues.Raycast 500

damage @s 2 sting by @p[scores={Statues.Monsters=4},limit=1]
effect give @s poison 6 1 true

tellraw @s {"text": "You've been poisoned!","color": "dark_green"}