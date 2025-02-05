execute unless function statues:feature_flags/check_compass_tracker_flags run return fail
execute store result score $Compasses Statues.ItemCount run clear @s compass[custom_data={is_compass_tracker:1b}] 0
execute if score $Compasses Statues.ItemCount matches 2.. run clear @s compass[custom_data={is_compass_tracker:1b}]
$item replace entity @s hotbar.8 with compass[custom_data={"is_compass_tracker":1b},custom_name='{"translate":"statues.item.objective.tracker","italic":false}',lodestone_tracker={target:{pos:[$(compass_target_pos_x),$(compass_target_pos_y),$(compass_target_pos_z)],dimension:"minecraft:overworld"},tracked:true}]
