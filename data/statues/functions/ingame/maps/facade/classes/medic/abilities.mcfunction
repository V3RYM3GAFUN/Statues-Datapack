execute unless function statues:feature_flags/check_abilities_flags run return fail

execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..6000 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:2,display:{Name:'[{"text":"Healing nanobots","italic":false,"color":"red"}]',Lore:['[{"text":"Gives your entire team a powerful","italic":false}]','[{"text":"regen for 10 seconds","italic":false}]','[{"text":"Cooldown: 5min","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @a[team=Survivor] regeneration 10 2 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 6000

execute if score @s Statues.Players matches 6000 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..5999 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..6000 run scoreboard players set @s Statues.Abilities 0
 
#> Internal timer
execute if score @s Statues.Players matches 1..6000 run scoreboard players remove @s Statues.Players 1

#> Enchant the ability item back after a 60 seconds cooldown
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:2,display:{Name:'[{"text":"Healing nanobots","italic":false,"color":"red"}]',Lore:['[{"text":"Gives your entire team a powerful","italic":false}]','[{"text":"regen for 10 seconds","italic":false}]','[{"text":"Cooldown: 5min","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick