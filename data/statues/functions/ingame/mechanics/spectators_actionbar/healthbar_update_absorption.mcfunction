execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

execute if score $SpectatorAbsorptionHealth Statues.Data matches 2.. run data modify storage statues:data actionbar_text append value {"text":"","color":"white"}
execute if score $SpectatorAbsorptionHealth Statues.Data matches 1 run data modify storage statues:data actionbar_text append value {"text":"","color":"white"}

scoreboard players remove $SpectatorAbsorptionHealth Statues.Data 2

execute if score $SpectatorAbsorptionHealth Statues.Data matches 1.. run function statues:ingame/mechanics/spectators_actionbar/healthbar_update_absorption