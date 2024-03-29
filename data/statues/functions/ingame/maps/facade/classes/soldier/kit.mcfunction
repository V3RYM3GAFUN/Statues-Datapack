#> Equivalent to gunner
tag @s add soldier
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'},CustomModelData:1}

item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:40,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:4,show_particles:0b}]} 8
item replace entity @s hotbar.2 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:30,amplifier:3,show_particles:0b}]} 48

item replace entity @s hotbar.8 with compass