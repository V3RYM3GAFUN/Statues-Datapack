function statues:ingame/mechanics/raycasting/available_ammo

execute if score @s Statues.AmmoSelect matches 0 run item modify entity @s weapon.mainhand statues:ammo_select_0
execute if score @s Statues.AmmoSelect matches 0 run item modify entity @s weapon.mainhand statues:ammo_select_0_color

execute if score @s Statues.AmmoSelect matches 1 run item modify entity @s weapon.mainhand statues:ammo_select_1
execute if score @s Statues.AmmoSelect matches 1 run item modify entity @s weapon.mainhand statues:ammo_select_1_color

execute if score @s Statues.AmmoSelect matches 2 run item modify entity @s weapon.mainhand statues:ammo_select_2
execute if score @s Statues.AmmoSelect matches 2 run item modify entity @s weapon.mainhand statues:ammo_select_2_color

execute if score @s Statues.AmmoSelect matches 3 run item modify entity @s weapon.mainhand statues:ammo_select_3
execute if score @s Statues.AmmoSelect matches 3 run item modify entity @s weapon.mainhand statues:ammo_select_3_color

advancement revoke @s only statues:guns/select_ammo