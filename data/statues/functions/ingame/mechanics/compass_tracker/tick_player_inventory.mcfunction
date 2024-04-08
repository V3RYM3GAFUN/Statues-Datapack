execute unless function statues:feature_flags/check_compass_tracker_flags run return fail
execute store result score $Compasses Statues.ItemCount run clear @s compass{is_compass_tracker:1b} 0
execute if score $Compasses Statues.ItemCount matches 2.. run clear @s compass{is_compass_tracker:1b}
$item replace entity @s hotbar.8 with compass{is_compass_tracker:1b,LodestoneDimension:"minecraft:overworld",LodestonePos:{X:$(compass_target_pos_x),Y:$(compass_target_pos_y),Z:$(compass_target_pos_z)},LodestoneTracked:0b}
