
execute if score @s Statues.Abilities matches 2.. run scoreboard players set @s Statues.Abilities 0

#> Activate ability

# Cooldown
execute if score @s Statues.Players matches 1..3000 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"Invisibility cloak","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Cooldown: 30 secs","italic":false}]']},HideFlags:4}

execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run effect give @s invisibility 10 0 true
execute if score @s Statues.Abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 3000

execute if score @s Statues.Players matches 3000 run playsound entity.enderman.teleport block @s ~ ~ ~ 1 0.75
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1199 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

execute if score @s Statues.Abilities matches 1.. run scoreboard players set @s Statues.Abilities 0

# Removes armour for pure invisibility
execute if score @s Statues.Players matches 2801..3000 run item replace entity @s armor.feet with air
execute if score @s Statues.Players matches 2801..3000 run item replace entity @s armor.legs with air
execute if score @s Statues.Players matches 2801..3000 run item replace entity @s armor.chest with air
execute if score @s Statues.Players matches 2801..3000 run item replace entity @s armor.head with air

#> Internal timer
execute if score @s Statues.Players matches 1..3000 run scoreboard players remove @s Statues.Players 1

#> Gives back armour after invisibility runs out, then 30 seconds cooldown
execute if score @s Statues.Players matches 2800 run item replace entity @s armor.chest with leather_chestplate{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
execute if score @s Statues.Players matches 2800 run item replace entity @s armor.legs with leather_leggings{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
execute if score @s Statues.Players matches 2800 run item replace entity @s armor.feet with leather_boots{display:{color:8991416,Name:'["",{"text":"Cloaker Outfit","italic":false,"color":"dark_purple","bold":true}]'},Unbreakable:1,HideFlags:68}
execute if score @s Statues.Players matches 2800 run item replace entity @s armor.head with player_head{display:{Name:'{"text":"Cloaker\'s helmet"}'},SkullOwner: {Id: [I; -1588096129, 470896178, -1736494308, -995102482], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjFmMzc0MTZlNTI1M2UzZjU0MGVlZTc4MTM3ZDBiNGI5ZThjOWY2YmFmNWRiNjQ2Y2Y5MDY5Y2ZkNGIyOGM0NSJ9fX0="}]}}}

execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:5,display:{Name:'[{"text":"Invisibility cloak","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"Cooldown: 2m30","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick