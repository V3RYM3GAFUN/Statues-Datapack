execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..1800 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:4,display:{Name:'[{"text":"Dopamine","italic":false,"color":"aqua"}]',Lore:['[{"text":"Extreme speed boost,","italic":false}]','[{"text":"but at the cost of sight","italic":false}]','[{"text":"Cooldown: 75 secs","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s speed 15 3 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s darkness 17 1 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s nausea 20 0 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1800

execute if score @s Statues.Players matches 1800 run playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 1 0
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..1800 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..1800 run scoreboard players remove @s Statues.Players 1

#> Enchant the ability item back after a 75 seconds cooldown
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:4,display:{Name:'[{"text":"Dopamine","italic":false,"color":"aqua"}]',Lore:['[{"text":"Extreme speed boost,","italic":false}]','[{"text":"but at the cost of sight","italic":false}]','[{"text":"Cooldown: 75 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick