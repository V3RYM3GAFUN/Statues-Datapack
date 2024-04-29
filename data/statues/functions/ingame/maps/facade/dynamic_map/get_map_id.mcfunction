#
# call as @a
# out: <score $DynamicMapNew Statues.TempData>
#
#
# Map ID format:
#
# [742FXX]
#
# 742: Unique for Façade
# F bit 0 = 100: SCROLLEAST?
# F bit 1 = 200: SCROLLSOUTH?
# F bit 2 = 400: BLINKING?
# XX: 01 + FLOOR[0-8] * 11 + OBJECTIVE[0-10]
#

scoreboard players set $DynamicMapNew Statues.TempData 742001

# OBJECTIVE
scoreboard players operation $DynamicMapNew Statues.TempData += $Objective Statues.DynamicData
# FLOOR + SCROLL
function statues:ingame/maps/facade/dynamic_map/floors_macro with storage statues:dynamic_map_pos facade
# BLINKING
# not implemented