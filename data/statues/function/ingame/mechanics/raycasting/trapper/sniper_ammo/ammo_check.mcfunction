advancement revoke @s only statues:guns/trapper/sniper_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/trapper/sniper_ammo/start

execute if items entity @s weapon *[custom_data~{is_trapper_gun:true}] run return run function statues:ingame/mechanics/raycasting/trapper/sniper_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/trapper/sniper_ammo/reset {hand:"offhand"}