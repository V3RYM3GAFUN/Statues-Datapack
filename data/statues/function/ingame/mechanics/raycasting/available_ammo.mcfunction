execute if score @s Statues.AmmoSelect matches 4.. run scoreboard players set @s Statues.AmmoSelect 0

execute unless items entity @s hotbar.* arrow[custom_data={weak_ammo:true}] if score @s Statues.AmmoSelect matches 0 run scoreboard players add @s Statues.AmmoSelect 1
execute unless items entity @s hotbar.* arrow[custom_data={strong_ammo:true}] if score @s Statues.AmmoSelect matches 1 run scoreboard players add @s Statues.AmmoSelect 1
execute unless items entity @s hotbar.* arrow[custom_data={medic_ammo:true}] if score @s Statues.AmmoSelect matches 2 run scoreboard players add @s Statues.AmmoSelect 1
execute unless items entity @s hotbar.* arrow[custom_data={sniper_ammo:true}] if score @s Statues.AmmoSelect matches 3 run scoreboard players set @s Statues.AmmoSelect 0
