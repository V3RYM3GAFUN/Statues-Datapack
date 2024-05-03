execute unless score @s Statues.Health = @s Statues.PrevHealth run function statues:mechanics/survivors_healthbar/update_scoreboard
scoreboard players operation @s Statues.PrevHealth = @s Statues.Health
