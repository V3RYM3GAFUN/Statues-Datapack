execute unless function statues:feature_flags/check_dynamic_map_flags run return fail
$execute if block $(floors_x) ~ $(floors_z) oak_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:0,floor_y:$(floor0_y)}
$execute if block $(floors_x) ~ $(floors_z) spruce_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:100,floor_y:$(floor1_y)}
$execute if block $(floors_x) ~ $(floors_z) birch_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:200,floor_y:$(floor2_y)}
$execute if block $(floors_x) ~ $(floors_z) jungle_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:300,floor_y:$(floor3_y)}
$execute if block $(floors_x) ~ $(floors_z) acacia_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:400,floor_y:$(floor4_y)}
$execute if block $(floors_x) ~ $(floors_z) dark_oak_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:500,floor_y:$(floor5_y)}
$execute if block $(floors_x) ~ $(floors_z) mangrove_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:600,floor_y:$(floor6_y)}
$execute if block $(floors_x) ~ $(floors_z) crimson_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:700,floor_y:$(floor7_y)}
$execute if block $(floors_x) ~ $(floors_z) warped_planks run return run function statues:mechanics/dynamic_map/maps/facade/floor_macro {floor:800,floor_y:$(floor8_y)}

# Other blocks: Get previous FLOOR + SCROLL
scoreboard players operation $DynamicMapFloor Statues.TempData = $DynamicMapOld Statues.TempData
scoreboard players remove $DynamicMapFloor Statues.TempData 7420000
scoreboard players operation $DynamicMapScroll Statues.TempData = $DynamicMapFloor Statues.TempData

scoreboard players operation $DynamicMapFloor Statues.TempData %= $1000 Statues.Constants
scoreboard players operation $DynamicMapFloor Statues.TempData /= $100 Statues.Constants
scoreboard players operation $DynamicMapFloor Statues.TempData *= $100 Statues.Constants
scoreboard players operation $DynamicMapNew Statues.TempData += $DynamicMapFloor Statues.TempData

scoreboard players operation $DynamicMapScroll Statues.TempData /= $1000 Statues.Constants
scoreboard players operation $DynamicMapScroll Statues.TempData *= $1000 Statues.Constants
scoreboard players operation $DynamicMapNew Statues.TempData += $DynamicMapScroll Statues.TempData