execute unless function statues:feature_flags/check_abilities_flags run return fail

execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# On success, give the shield to the player and start cooldown
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 3200
execute if score @s Statues.Players matches 3001..3200 unless data entity @s Inventory[{Slot:4b,id:"minecraft:crossbow"}] run item replace entity @s weapon with crossbow{Unbreakable:1,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'},Enchantments:[{id:"multishot",lvl:1},{id:"quick_charge",lvl:5}],HideFlags:1,CustomModelData:3}

# Audios for the cooldown
execute if score @s Statues.Players matches 3200 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..3199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..3200 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..3200 run scoreboard players remove @s Statues.Players 1
function statues:mechanics/xp_bar/from_cooldown { max: 3200 }

#> Removes rapid fire shotgun after 30 seconds, then 60 seconds cooldown
execute if score @s Statues.Players matches 1..3000 run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}}
execute if score @s Statues.Players matches 1..3000 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:1,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 2m30s","italic":false}]']},HideFlags:4}
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:1,display:{Name:'[{"text":"Rapid fire Shotgun","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 2m30s","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
execute store result score $Shotguns Statues.ItemCount run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}} 0
execute if score $Shotguns Statues.ItemCount matches 2.. run clear @s crossbow{display:{Name:'[{"text":"Rapid fire Shotgun","italic":false}]'}}

execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick