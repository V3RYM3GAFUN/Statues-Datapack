execute unless function statues:feature_flags/check_experimental_flashlight_flags run return fail
execute as @s[advancements={statues:spyglass_use=true}] run scoreboard players set @s Statues.Flashlight 1
execute as @s[advancements={statues:spyglass_use=false}] run scoreboard players set @s Statues.Flashlight 0
advancement revoke @s only statues:spyglass_use

execute if score @s[tag=!marksman] Statues.Flashlight matches ..0 run effect clear @s night_vision
execute if score @s Statues.Flashlight matches ..0 run attribute @s generic.movement_speed base set 0.1