execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues. 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..1200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:1,display:{Name:'[{"text":"Invisibility cloak","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Cooldown: 30 secs","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s invisibility 30 0 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1200

execute if score @s Statues.Players matches 1200 run playsound entity.enderman.teleport block @s ~ ~ ~ 1 0.75
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues. matches 1.. run scoreboard players set @s Statues. 0

# Removes armour for pure invisibility
execute if score @s Statues.Players matches 601..1200 run item replace entity @s armor.feet with air
execute if score @s Statues.Players matches 601..1200 run item replace entity @s armor.legs with air
execute if score @s Statues.Players matches 601..1200 run item replace entity @s armor.chest with air
execute if score @s Statues.Players matches 601..1200 run item replace entity @s armor.head with air

#> Internal timer
execute if score @s Statues.Players matches 1..1200 run scoreboard players remove @s Statues.Players 1

#> Gives back armour after invisibility runs out, then 30 seconds cooldown
execute if score @s Statues.Players matches 600 run item replace entity @s armor.feet with leather_boots
execute if score @s Statues.Players matches 600 run item replace entity @s armor.legs with leather_leggings
execute if score @s Statues.Players matches 600 run item replace entity @s armor.chest with leather_chestplate
execute if score @s Statues.Players matches 600 run item replace entity @s armor.head with minecraft:player_head{display:{Name:'{"text":"Purple Knight Helmet"}'},SkullOwner:{Id:[I;-923212898,-166312604,-1112508036,2065471715],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmEwM2IzNWQ0NDg1MGNiNDJiMDAwMTdhZGRiN2Y4NWVhYWMyNGI1NmEwY2Q1MWNhMWNhYzIyYjZlYjQyM2UxMSJ9fX0="}]}}} 1
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:1,display:{Name:'[{"text":"Invisibility cloak","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Cooldown: 30 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick