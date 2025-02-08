execute unless function statues:feature_flags/check_game_replay_flags run return fail
$execute positioned $(x) $(y) $(z) align xyz run summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:black_concrete"},Tags:["game_replay_key","game_replay_entity","game_replay_new_entity"],Glowing:1b,view_range:10}
data modify entity @n[tag=game_replay_new_entity] transformation set value {scale:[0.99f,0.99f,0.99f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0.005f,0.005f,0.005f]}
$execute as @n[tag=game_replay_new_entity] run function statues:mechanics/game_replay/type_handlers/13/$(kind)
tag @e[tag=game_replay_new_entity] remove game_replay_new_entity