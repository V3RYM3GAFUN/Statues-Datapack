execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# On success, give the shield to the player and start cooldown
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1800
execute if score @s Statues.Players matches 1200..1800 unless data entity @s Inventory[{Slot:4b,id:"minecraft:crossbow"}] run item replace entity @s weapon with crossbow{Unbreakable:1,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:3}],HideFlags:1}

# Audios for the cooldown
execute if score @s Statues.Players matches 1800 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..1800 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..1800 run scoreboard players remove @s Statues.Players 1

#> Removes rapid fire shotgun after 30 seconds, then 60 seconds cooldown
execute if score @s Statues.Players matches 1..1200 run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}}
execute if score @s Statues.Players matches 1..1200 unless data entity @s Inventory[{Slot:4b,id:"minecraft:carrot_on_a_stick"}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:1,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}
execute if score @s Statues.Players matches ..0 unless data entity @s Inventory[{Slot:4b,id:"minecraft:carrot_on_a_stick"}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
execute store result score $Shotguns Statues.ItemCount run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}} 0
execute if score $Shotguns Statues.ItemCount matches 2.. run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}}

execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick