tag @s add blinder
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Blinder\'s gun","italic":false}]'}}

item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:40,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:4,show_particles:0b}]} 16

item replace entity @s hotbar.2 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:100,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.3 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:100,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.4 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:100,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.5 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:100,show_particles:0b,show_icon:0b}]} 1
item replace entity @s hotbar.6 with lingering_potion{CustomPotionColor:6184542,display:{Name:'[{"text":"Smoke grenade","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"blindness",duration:60,show_particles:0b,show_icon:0b},{id:"nausea",duration:100,show_particles:0b,show_icon:0b}]} 1

item replace entity @s hotbar.8 with compass