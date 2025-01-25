scoreboard players operation @s Statues.Survivors = @s Statues.Health

data merge storage statues:data {healthbar_text:[]}
function statues:mechanics/survivors_healthbar/create_healthbar_text
function statues:mechanics/survivors_healthbar/update_scoreboard_inner with storage statues:data
