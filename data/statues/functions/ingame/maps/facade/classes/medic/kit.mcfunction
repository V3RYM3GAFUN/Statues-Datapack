tag @s add medic
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 1 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Medic pistol","italic":false}]'},CustomModelData:5}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:16711680,display:{Name:'[{"text":"Adrenaline-injected dart","italic":false,"color":"red"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:regeneration",duration:450,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:200,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2}]} 32

item replace entity @s hotbar.5 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}
item replace entity @s hotbar.6 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}
item replace entity @s hotbar.7 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}

item replace entity @s hotbar.8 with compass

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:sentry,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}