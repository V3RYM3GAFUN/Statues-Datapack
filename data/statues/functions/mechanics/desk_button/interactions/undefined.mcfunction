execute unless function statues:feature_flags/check_desk_button_flags run return fail

execute on target run tellraw @s {"text":"This button does not have defined behavior yet!", "color": "red"}
execute on target run playsound minecraft:block.note_block.bass block @s