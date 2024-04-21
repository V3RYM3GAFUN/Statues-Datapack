execute unless function statues:feature_flags/check_spectators_actionbar_flags run return fail

execute store result score $SpectatorMaxHealth Statues.TempData run attribute @a[tag=spectator_tracker,limit=1] minecraft:generic.max_health get
execute store result score $SpectatorHealth Statues.TempData run data get entity @a[tag=spectator_tracker,limit=1] Health 100
scoreboard players add $SpectatorHealth Statues.TempData 99
scoreboard players operation $SpectatorHealth Statues.TempData /= $100 Statues.StaticData
execute store result score $SpectatorAbsorptionHealth Statues.TempData run data get entity @a[tag=spectator_tracker,limit=1] AbsorptionAmount 100
scoreboard players add $SpectatorAbsorptionHealth Statues.TempData 99
scoreboard players operation $SpectatorAbsorptionHealth Statues.TempData /= $100 Statues.StaticData

function statues:ingame/mechanics/spectators_actionbar/healthbar_update_normal
function statues:ingame/mechanics/spectators_actionbar/healthbar_update_absorption