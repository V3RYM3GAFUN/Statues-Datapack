tag @s add juggernaut
tag @s add class_selected
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 4 true
effect give @s slowness infinite 0 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with crossbow{Unbreakable:1,display:{Name:'[{"text":"Anti anomaly rifle","italic":false}]'},Enchantments:[{id:"quick_charge",lvl:3}],HideFlags:1,CustomModelData:1} 1
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:209,display:{Name:'[{"text":"Strong Anti-anomaly Ammo","italic":false,"color":"dark_blue"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:100,show_particles:0b},{id:"minecraft:slowness",duration:140,amplifier:10,show_particles:0b}]} 32

item replace entity @s hotbar.2 with stick{display:{Name:'{"text":"Crowbar","italic":false}',Lore:['{"text":"Used to open barrels.","italic":false,"color":"aqua"}']},CustomModelData:10,is_crowbar:1b}

item replace entity @s hotbar.5 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}
item replace entity @s inventory.0 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}
item replace entity @s inventory.1 with splash_potion{CustomPotionColor:9737364,display:{Name:'[{"text":"Armour","italic":false,"color":"gray"}]'},custom_potion_effects:[{id:"minecraft:absorption",duration:999999,amplifier:4,show_particles:0b}]}

item replace entity @s armor.head with player_head{display:{Name:'{"text":"Juggernaut\'s helmet"}'},SkullOwner: {Id: [I; -1600956670, 1044270905, -1222486736, 787363462], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ4ZWIzMzE5YTMyNWQ5M2Y1OTQzNTRmMWM0N2VkZDgwYjhjODJlN2NjMjdlNTZhOWI5NGVhZjgyZDcyNTFiNSJ9fX0="}]}}}

item replace entity @s armor.chest with leather_chestplate{Trim:{pattern:raiser,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.legs with leather_leggings{Trim:{pattern:wayfinder,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}
item replace entity @s armor.feet with leather_boots{Trim:{pattern:snout,material:iron},display:{color:9870729,Name:'["",{"text":"Juggernaut Outfit","italic":false,"color":"gray","bold":true}]'},Unbreakable:1,HideFlags:196}

item replace entity @s weapon.offhand with stick{flashlight:1b,CustomModelData:7,display:{Name:'{"text":"Flashlight","italic": false}'}}

execute if entity @s[tag=!class_tutorial] run scoreboard players operation $ClassKind Statues.GameEventData = $ClassKind.Juggernaut Statues.GameEventEnum
execute if entity @s[tag=!class_tutorial] run function #statues:game_events/pick_class_survivor