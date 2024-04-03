execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# Success
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @a[team=Monster] slowness 10 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @a[team=Monster] blindness 5 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s slowness 5 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s darkness 5 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1800

# Audios for the cooldown
execute if score @s Statues.Players matches 1800 run playsound minecraft:block.conduit.deactivate block @s ~ ~ ~ 1 1
execute if score @s Statues.Players matches 1800 run playsound minecraft:block.conduit.deactivate block @a[team=Monster] ~ ~ ~ 1 1
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..1800 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..1800 run scoreboard players remove @s Statues.Players 1

execute if score @s Statues.Players matches 1..1200 unless data entity @s Inventory[{Slot:4b,id:"minecraft:carrot_on_a_stick"}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs. Will also affect the user","italic":false}]']},HideFlags:4}
execute if score @s Statues.Players matches ..0 unless data entity @s Inventory[{Slot:4b,id:"minecraft:carrot_on_a_stick"}] run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs. Will also affect the user","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick