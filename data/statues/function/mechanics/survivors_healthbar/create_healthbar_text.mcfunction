execute store result score $MaxHealth Statues.TempData run attribute @s max_health get
execute store result score $Health Statues.TempData run data get entity @s Health 100
scoreboard players add $Health Statues.TempData 99
scoreboard players operation $Health Statues.TempData /= $100 Statues.Constants
execute store result score $AbsorptionHealth Statues.TempData run data get entity @s AbsorptionAmount 100
scoreboard players add $AbsorptionHealth Statues.TempData 99
scoreboard players operation $AbsorptionHealth Statues.TempData /= $100 Statues.Constants

execute if score survivors_heart_sidebar Statues.FeatureFlags matches 1.. run function statues:mechanics/survivors_healthbar/healthbar_update_normal
execute if score survivors_heart_sidebar Statues.FeatureFlags matches 1.. run function statues:mechanics/survivors_healthbar/healthbar_update_absorption
execute if score survivors_heart_sidebar Statues.FeatureFlags matches 1.. run return 0

scoreboard players operation $Health Statues.TempData += $AbsorptionHealth Statues.TempData
execute store result storage statues:data Health int 1 run scoreboard players get $Health Statues.TempData
function statues:mechanics/survivors_healthbar/health_direct_number with storage statues:data
data modify storage statues:data healthbar_text append value "hp"