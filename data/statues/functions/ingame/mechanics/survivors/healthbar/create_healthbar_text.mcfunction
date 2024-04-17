execute store result score $MaxHealth Statues.TempData run attribute @s minecraft:generic.max_health get
execute store result score $Health Statues.TempData run data get entity @s Health 100
scoreboard players add $Health Statues.TempData 50
scoreboard players operation $Health Statues.TempData /= $100 Statues.StaticData
execute store result score $AbsorptionHealth Statues.TempData run data get entity @s AbsorptionAmount 100
scoreboard players add $AbsorptionHealth Statues.TempData 50
scoreboard players operation $AbsorptionHealth Statues.TempData /= $100 Statues.StaticData

function statues:ingame/mechanics/survivors/healthbar/healthbar_update_normal
function statues:ingame/mechanics/survivors/healthbar/healthbar_update_absorption