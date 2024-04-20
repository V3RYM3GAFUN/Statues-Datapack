# ~8.16% error
# input <score $PythagorasX Statues.TempData>, <score $PythagorasY Statues.TempData>, <score $PythagorasZ Statues.TempData> (consumed by function)
# result in <score $PythagorasR Statues.TempData> scaled by 10000

execute unless score $PythagorasX Statues.TempData matches 0.. run scoreboard players operation $PythagorasX Statues.TempData *= $-1 Statues.StaticData
execute unless score $PythagorasY Statues.TempData matches 0.. run scoreboard players operation $PythagorasY Statues.TempData *= $-1 Statues.StaticData
execute unless score $PythagorasZ Statues.TempData matches 0.. run scoreboard players operation $PythagorasZ Statues.TempData *= $-1 Statues.StaticData
execute if score $PythagorasX Statues.TempData < $PythagorasY Statues.TempData run scoreboard players operation $PythagorasX Statues.TempData >< $PythagorasY Statues.TempData 
scoreboard players operation $PythagorasT Statues.TempData = $PythagorasX Statues.TempData
scoreboard players operation $PythagorasT Statues.TempData *= $96 Statues.StaticData
scoreboard players operation $PythagorasTY Statues.TempData = $PythagorasY Statues.TempData
scoreboard players operation $PythagorasTY Statues.TempData *= $40 Statues.StaticData
scoreboard players operation $PythagorasT Statues.TempData += $PythagorasTY Statues.TempData
scoreboard players operation $PythagorasZ Statues.TempData *= $100 Statues.StaticData
execute if score $PythagorasT Statues.TempData < $PythagorasZ Statues.TempData run scoreboard players operation $PythagorasT Statues.TempData >< $PythagorasZ Statues.TempData 
scoreboard players operation $PythagorasR Statues.TempData = $PythagorasT Statues.TempData
scoreboard players operation $PythagorasR Statues.TempData *= $96 Statues.StaticData
scoreboard players operation $PythagorasRY Statues.TempData = $PythagorasZ Statues.TempData
scoreboard players operation $PythagorasRY Statues.TempData *= $40 Statues.StaticData
scoreboard players operation $PythagorasR Statues.TempData += $PythagorasRY Statues.TempData
