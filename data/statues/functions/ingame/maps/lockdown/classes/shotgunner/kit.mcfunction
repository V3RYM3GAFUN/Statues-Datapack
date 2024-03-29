tag @s add shotgunner
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Shotgun","italic":false}]'},Enchantments:[{id:"multishot",lvl:1}],HideFlags:1}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:30,amplifier:3,show_particles:0b}]} 24

item replace entity @s hotbar.8 with compass