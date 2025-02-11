execute unless function statues:feature_flags/check_survivors_healthbar_flags run return fail

execute unless score @s Statues.Health = @s Statues.PrevHealth run function statues:mechanics/survivors_healthbar/update_scoreboard
scoreboard players operation @s Statues.PrevHealth = @s Statues.Health
