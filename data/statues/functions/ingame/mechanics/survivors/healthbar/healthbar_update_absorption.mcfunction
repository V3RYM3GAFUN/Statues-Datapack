execute if score $AbsorptionHealth Statues.TempData matches 2.. run data modify storage statues:data healthbar_text append value ""
execute if score $AbsorptionHealth Statues.TempData matches 1 run data modify storage statues:data healthbar_text append value ""

scoreboard players remove $AbsorptionHealth Statues.TempData 2

execute if score $AbsorptionHealth Statues.TempData matches 1.. run function statues:ingame/mechanics/survivors/healthbar/healthbar_update_absorption