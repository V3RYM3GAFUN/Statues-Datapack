execute unless function statues:feature_flags/check_abilities_flags run return fail

execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# On success, give the shield to the player and start cooldown
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 3800
execute if score @s Statues.Players matches 3601..3800 run item replace entity @s hotbar.4 with tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Infinite ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:3,show_particles:0b}]}

execute if score @s Statues.Players matches ..3600 unless data entity @s Inventory[{Slot:4b,id:"minecraft:carrot_on_a_stick"}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:4,display:{Name:'[{"text":"Infinite ammo","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}

# Audios for the cooldown
execute if score @s Statues.Players matches 3800 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..3799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..3800 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..3800 run scoreboard players remove @s Statues.Players 1
function statues:ingame/mechanics/xp_bar/from_cooldown { max: 3800 }

#> Removes arrows after 30 seconds, then 60 seconds cooldown
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1b,CustomModelData:4,display:{Name:'[{"text":"Infinite ammo","italic":false,"color":"aqua"}]',Lore:['[{"text":"Cooldown: 3m","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
execute store result score $Arrows Statues.ItemCount run clear @s tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Infinite ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:3b,show_particles:0b}]} 0
execute if score $Arrows Statues.ItemCount matches 2.. run clear @s tipped_arrow{CustomPotionColor:568831,display:{Name:'[{"text":"Infinite ammo","italic":false,"color":"dark_aqua"}]'},custom_potion_effects:[{id:"minecraft:blindness",duration:20,show_particles:0b},{id:"minecraft:slowness",duration:40,amplifier:3b,show_particles:0b}]}

execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick