execute unless function statues:feature_flags/check_dynamic_map_flags run return fail

# If the player is not in the scoreboard yet, any match will fail
execute unless score @s Statues.DynamicMapId matches 0.. run scoreboard players set @s Statues.DynamicMapId 0
scoreboard players operation $DynamicMapOld Statues.TempData = @s Statues.DynamicMapId

scoreboard players set $DynamicMapNew Statues.TempData 4242
execute if score $Map Statues.DynamicData matches 0 run function statues:mechanics/dynamic_map/maps/facade/get_map_id
execute if score $DynamicMapOld Statues.TempData = $DynamicMapNew Statues.TempData run return 1

scoreboard players operation @s Statues.DynamicMapId = $DynamicMapNew Statues.TempData

execute store result storage statues:temp DynamicMap.New int 1 run scoreboard players get $DynamicMapNew Statues.TempData
execute if items entity @s weapon.mainhand filled_map run function statues:mechanics/dynamic_map/replace_mainhand_macro with storage statues:temp DynamicMap
execute if items entity @s weapon.offhand filled_map run function statues:mechanics/dynamic_map/replace_offhand_macro with storage statues:temp DynamicMap