execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

execute store result score $SpectatorMaxHealth Statues.Data run attribute @a[tag=spectator_tracker,limit=1] minecraft:generic.max_health get
execute store result score $SpectatorHealth Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] Health
execute store result score $SpectatorAbsorptionHealth Statues.Data run data get entity @a[tag=spectator_tracker,limit=1] AbsorptionAmount

function statues:ingame/mechanics/spectators_actionbar/healthbar_update_normal
function statues:ingame/mechanics/spectators_actionbar/healthbar_update_absorption