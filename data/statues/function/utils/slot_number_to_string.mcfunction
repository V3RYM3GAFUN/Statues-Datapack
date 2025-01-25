#
# in: <score $SlotN2SIn Statues.TempData> (consumed)
# out: <storage string statues:temp SlotN2S.Out>
# side effect: <storage int statues:temp SlotN2S.Temp>
# 

execute if score $SlotN2SIn Statues.TempData matches -106 run return run data modify storage statues:temp SlotN2S.Out set value "weapon.offhand"

execute if score $SlotN2SIn Statues.TempData matches 0..8 run return run function statues:utils/internal/slot_number_to_string_hotbar

# Inventory
scoreboard players remove $SlotN2SIn Statues.TempData 9
execute store result storage statues:temp SlotN2S.Temp int 1 run scoreboard players get $SlotN2SIn Statues.TempData
function statues:utils/internal/slot_number_to_string_inventory_macro with storage statues:temp SlotN2S