execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

execute if score $SpectatorHealth Statues.TempData matches 2.. run data modify storage statues:data actionbar_text append value {"text":"","color":"white"}
execute if score $SpectatorHealth Statues.TempData matches 1 run data modify storage statues:data actionbar_text append value {"text":"","color":"white"}
execute if score $SpectatorHealth Statues.TempData matches ..0 run data modify storage statues:data actionbar_text append value {"text":"","color":"white"}

scoreboard players remove $SpectatorMaxHealth Statues.TempData 2
scoreboard players remove $SpectatorHealth Statues.TempData 2

execute if score $SpectatorMaxHealth Statues.TempData matches 1.. run function statues:ingame/mechanics/spectators_actionbar/healthbar_update_normal