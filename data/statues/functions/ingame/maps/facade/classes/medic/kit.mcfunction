tag @s add medic
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 1 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Medic pistol","italic":false}]'},CustomModelData:2}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:16711680,display:{Name:'[{"text":"Adrenaline-injected dart","italic":false,"color":"red"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:regeneration",duration:450,amplifier:1,show_particles:0b},{id:"minecraft:resistance",duration:200,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2}]} 32

item replace entity @s hotbar.5 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}
item replace entity @s hotbar.6 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}
item replace entity @s hotbar.7 with splash_potion{CustomPotionColor:16744436,display:{Name:'[{"text":"Stim","italic":false,"color":"light_purple"}]'},custom_potion_effects:[{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:nausea",duration:450,show_particles:0b},{id:"minecraft:regeneration",duration:40,amplifier:4,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:2,show_particles:0b}]}

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Medic\'s helmet"}'},SkullOwner: {Id: [I; -235476552, -1627697789, -1277141513, 389390304], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGQwYjBkZjA4ZjgwYjdlZGUwNWYxMjgzMmIyNmQ4ZGI3MWI2NGU5MjcyNTBiOWZiZDc1Y2UxOTFmODgxYTY5OSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:sentry,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:emerald},display:{color:16777215,Name:'["",{"text":"Medic Outfit","italic":false,"bold":true}]'},Unbreakable:1,HideFlags:196}

item replace entity @s weapon.offhand with stick{flashlight:1b,CustomModelData:7,display:{Name:'{"text":"Flashlight","italic": false}'}}