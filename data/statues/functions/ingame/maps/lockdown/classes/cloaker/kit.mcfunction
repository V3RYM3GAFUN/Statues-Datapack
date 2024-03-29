tag @s add cloaker
scoreboard players set @s Statues.Players 0

item replace entity @s hotbar.0 with bow{Unbreakable:1b,"display":{Name:'[{"text":"Anti anomaly gun","italic":false}]'}}
item replace entity @s hotbar.1 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Weak Anti-anomaly Ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:30,amplifier:3,show_particles:0b}]} 16

item replace entity @s hotbar.8 with compass

item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Purple Knight Helmet"}'},SkullOwner:{Id:[I;-923212898,-166312604,-1112508036,2065471715],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmEwM2IzNWQ0NDg1MGNiNDJiMDAwMTdhZGRiN2Y4NWVhYWMyNGI1NmEwY2Q1MWNhMWNhYzIyYjZlYjQyM2UxMSJ9fX0="}]}}} 1
