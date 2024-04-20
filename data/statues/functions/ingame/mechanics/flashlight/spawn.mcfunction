execute unless function statues:feature_flags/check_flashlight_flags run return fail

execute if block ~ ~ ~ air unless block ~ ~1 ~ air align xyz run function statues:ingame/mechanics/flashlight/emit
execute positioned ~ ~1 ~ if block ~ ~ ~ air align xyz run function statues:ingame/mechanics/flashlight/emit 
