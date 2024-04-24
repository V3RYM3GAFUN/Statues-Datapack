execute unless function statues:feature_flags/check_survivors_heart_sidebar_flags run return fail

execute if score $Health Statues.TempData matches 2.. run data modify storage statues:data healthbar_text prepend value ""
execute if score $Health Statues.TempData matches 1 run data modify storage statues:data healthbar_text prepend value ""
execute if score $Health Statues.TempData matches ..0 run data modify storage statues:data healthbar_text prepend value ""

scoreboard players remove $MaxHealth Statues.TempData 2
scoreboard players remove $Health Statues.TempData 2

execute if score $MaxHealth Statues.TempData matches 1.. run function statues:ingame/mechanics/survivors/healthbar/healthbar_update_normal