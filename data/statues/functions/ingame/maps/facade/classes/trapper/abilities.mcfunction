execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

execute if score @s Statues.Players matches 1..4200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 3m30s. Will also affect the user","italic":false}]']},HideFlags:4}

#> Activate ability

# Success
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @e[team=Monster] slowness 10 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @e[team=Monster] blindness 5 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s slowness 7 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s darkness 5 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 4200

# Audios for the cooldown
execute if score @s Statues.Players matches 4200 run playsound minecraft:block.conduit.deactivate block @s ~ ~ ~ 1 1
execute if score @s Statues.Players matches 4200 run playsound minecraft:block.conduit.deactivate block @a[team=Monster] ~ ~ ~ 1 1
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..4200 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..4200 run scoreboard players remove @s Statues.Players 1
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 3m30s. Will also affect the user","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick