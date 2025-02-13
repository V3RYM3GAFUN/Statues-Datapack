advancement revoke @s only statues:guns/rifle/sniper_ammo

execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

execute if items entity @s weapon *[custom_data~{is_rifle:true}] run return run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/reset/rifle {hand:"mainhand"}
function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/reset/rifle {hand:"offhand"}