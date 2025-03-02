scoreboard players set $RaycastDistance Statues.Raycast 80

effect give @s slowness 2 10 true
playsound entity.creaking.attack master @s ~ ~ ~ 1 0

tellraw @s {"text": "You've been grabbed!","color": "red","bold": true}