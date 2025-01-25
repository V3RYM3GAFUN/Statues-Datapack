execute unless function statues:feature_flags/check_abilities_flags run return fail

execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

# execute if score @s Statues.Players matches 1..4200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 3m30s. Will also affect the user","italic":false}]']},HideFlags:4}

#> Activate ability

# Success
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 4200

# Audios for the cooldown
execute if score @s Statues.Players matches 4200 run playsound minecraft:block.conduit.deactivate master @s ~ ~ ~ 1 1
execute if score @s Statues.Players matches 4200 run playsound minecraft:block.conduit.deactivate master @a[team=Monster] ~ ~ ~ 1 1
execute if score @s Statues.Players matches 4200 run effect give @a[team=Monster] slowness 5 10 true
execute if score @s Statues.Players matches 4200 run effect give @a[team=Monster] blindness 5 3 true
execute if score @s Statues.Players matches 4200 run effect give @s slowness 7 3 true
execute if score @s Statues.Players matches 4200 run effect give @s darkness 5 3 true
execute if score @s Statues.Players matches 4200 run tellraw @a [{"selector": "@s"},{"text":" used an EMP shock on monsters!"}]

execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..4199 run playsound block.note_block.guitar master @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..4200 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..4200 run scoreboard players remove @s Statues.Players 1
function statues:mechanics/xp_bar/from_cooldown { max: 4200 }
# execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"EMP shock","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 3m30s. Will also affect the user","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents the player from duplicating items
# execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
# execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick