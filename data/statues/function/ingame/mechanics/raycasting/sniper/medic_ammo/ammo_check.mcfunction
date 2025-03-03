advancement revoke @s only statues:guns/sniper/medic_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{medic_ammo:1b}] run function statues:ingame/mechanics/raycasting/sniper/medic_ammo/start

execute if items entity @s weapon *[custom_data~{is_sniper:true}] run return run function statues:ingame/mechanics/raycasting/sniper/medic_ammo/reset {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/sniper/medic_ammo/reset {hand:"offhand"}