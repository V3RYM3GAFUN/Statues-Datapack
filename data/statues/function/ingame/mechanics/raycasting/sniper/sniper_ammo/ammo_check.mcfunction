advancement revoke @s only statues:guns/sniper/sniper_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/sniper/sniper_ammo/start

execute if items entity @s weapon *[custom_data~{is_sniper:true}] run return run function statues:ingame/mechanics/raycasting/sniper/sniper_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/sniper/sniper_ammo/reset {hand:"offhand"}