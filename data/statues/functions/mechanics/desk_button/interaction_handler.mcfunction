execute unless function statues:feature_flags/check_desk_button_flags run return fail

execute if entity @s[tag=desk_button_interaction_ub] run function statues:mechanics/desk_button/interactions/undefined
execute if entity @s[tag=desk_button_interaction_tp_credits] run function statues:mechanics/desk_button/interactions/tp_credits
execute if entity @s[tag=desk_button_interaction_tp_tutorial] run function statues:mechanics/desk_button/interactions/tp_tutorial
execute if entity @s[tag=desk_button_interaction_spectate] run function statues:mechanics/desk_button/interactions/spectate_init