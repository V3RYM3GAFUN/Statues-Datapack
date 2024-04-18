execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..4200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"X-ray","italic":false,"color":"gray"}]',Lore:['[{"text":"Reveals the monsters,","italic":false}]','[{"text":"but you get revealed too","italic":false}]','[{"text":"Cooldown: 3m30s","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s glowing 6 0 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @a[team=Monster] glowing 12 0 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 4200

execute if score @s Statues.Players matches 4200 run playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..4199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches 1..4200 run scoreboard players set @s Statues.Abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..4200 run scoreboard players remove @s Statues.Players 1

#> Enchant the ability item back after a x seconds cooldown
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"X-ray","italic":false,"color":"gray"}]',Lore:['[{"text":"Reveals the monsters,","italic":false}]','[{"text":"but you get revealed too","italic":false}]','[{"text":"Cooldown: 3m30s","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick