execute unless function statues:feature_flags/check_abilities_flags run return fail

execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# On success, give the shield to the player and start cooldown
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 4200
execute if score @s Statues.Players matches 3601..4200 unless data entity @s Inventory[{Slot:4b,id:"minecraft:shield"}] run item replace entity @s hotbar.4 with shield

# Audios for the cooldown
execute if score @s Statues.Players matches 4200 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..4199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..4200 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..4200 run scoreboard players remove @s Statues.Players 1
function statues:mechanics/xp_bar/from_cooldown { max: 4200 }

#> Removes shield after 30 seconds, then 60 seconds cooldown
# execute if score @s Statues.Players matches 1..3600 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Retractable shield","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}
# execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Retractable shield","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
# execute store result score $Shields Statues.ItemCount run clear @s shield 0
#execute if score $Shields Statues.ItemCount matches 2.. run clear @s shield

# execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
# execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick