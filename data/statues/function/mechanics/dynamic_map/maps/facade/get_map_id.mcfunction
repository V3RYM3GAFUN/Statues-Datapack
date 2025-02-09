#
# call as @a
# in: <score $DynamicMapOld Statues.TempData>
# out: <score $DynamicMapNew Statues.TempData>
#
#
# Map ID format:
#
# [742KFSS]
#
# 742: Unique for Façade
# K bit 0 = 100: SCROLLEAST?
# K bit 1 = 200: SCROLLSOUTH?
# K bit 2 = 400: BLINKING?
# F = 0-8: FLOOR
# S = 0-10: OBJECTIVE
# S = 99: MONSTER
#
execute unless function statues:feature_flags/check_dynamic_map_flags run return fail

scoreboard players set $DynamicMapNew Statues.TempData 7420000

# OBJECTIVE
execute if entity @s[team=!Monster] run scoreboard players operation $DynamicMapNew Statues.TempData += $Objective Statues.DynamicData
execute if entity @s[team=Monster] run scoreboard players add $DynamicMapNew Statues.TempData 99

# FLOOR + SCROLL
function statues:mechanics/dynamic_map/maps/facade/floors_macro with storage statues:dynamic_map_pos facade

# BLINKING
# not implemented (will it ever be?)