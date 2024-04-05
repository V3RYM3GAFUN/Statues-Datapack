execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.abilities 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..1200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:2,display:{Name:'[{"text":"Anchor shoes","italic":false,"color":"red"}]',Lore:['[{"text":"Makes you immune to knockback","italic":false}]','[{"text":"for 30 seconds","italic":false}]','[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run attribute @s generic.knockback_resistance base set 10
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1200

execute if score @s Statues.Players matches 1200 run playsound minecraft:block.anvil.place block @s ~ ~ ~ 1 .5
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..1200 run scoreboard players set @s Statues.Abilities 0
 
#> Internal timer
execute if score @s Statues.Players matches 1..1200 run scoreboard players remove @s Statues.Players 1

#> Enchant the ability item back after a 60 seconds cooldown
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:2,display:{Name:'[{"text":"Anchor shoes","italic":false,"color":"red"}]',Lore:['[{"text":"Makes you immune to knockback","italic":false}]','[{"text":"for 30 seconds","italic":false}]','[{"text":"Cooldown: 60 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}
execute if score @s Statues.Players matches ..0 run attribute @s generic.knockback_resistance base set 0

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick