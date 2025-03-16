execute unless function statues:feature_flags/check_dynamic_map_flags run return fail
$item replace entity @s weapon.mainhand with filled_map[map_id=$(New)]
scoreboard players operation @s Statues.DynamicMapIdGiven = @s Statues.DynamicMapId