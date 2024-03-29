tag @s add tank
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 4 true
effect give @s resistance infinite 0 true
effect give @s slowness infinite 0 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Anti anomaly rifle","italic":false}]'},Enchantments:[{id:"quick_charge",lvl:2}],HideFlags:1,CustomModelData:3} 1
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:40,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:4,show_particles:0b}]} 32

item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Retractable shield","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}

item replace entity @s hotbar.5 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}
item replace entity @s hotbar.6 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}
item replace entity @s hotbar.7 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}

item replace entity @s hotbar.8 with compass