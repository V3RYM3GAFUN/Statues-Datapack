execute unless function statues:feature_flags/check_dynamic_map_flags run return fail
execute store result score $SlotN2SIn Statues.TempData store success score $DynamicMapExists Statues.TempData run data get entity @s Inventory[{id:"minecraft:filled_map"}].Slot
execute if score $DynamicMapExists Statues.TempData matches 0 run return 0

# Indexing with a compound again because otherwise, a macro and copying the slot to storage would be required
execute store result score $DynamicMapOld Statues.TempData run data get entity @s Inventory[{id:"minecraft:filled_map"}].components.minecraft:map_id

scoreboard players set $DynamicMapNew Statues.TempData 4242
execute if score $Map Statues.DynamicData matches 0 run function statues:mechanics/dynamic_map/maps/facade/get_map_id
execute if score $DynamicMapOld Statues.TempData = $DynamicMapNew Statues.TempData run return 1

function statues:utils/slot_number_to_string
execute store result storage statues:temp DynamicMap.New int 1 run scoreboard players get $DynamicMapNew Statues.TempData
data modify storage statues:temp DynamicMap.Slot set from storage statues:temp SlotN2S.Out
function statues:mechanics/dynamic_map/replace_macro with storage statues:temp DynamicMap