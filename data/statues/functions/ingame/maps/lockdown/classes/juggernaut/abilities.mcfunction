execute if score @s Statues.abilities matches 2.. run scoreboard players set @s Statues.abilities 0

#> Activate ability

# On success, give the shield to the player and start cooldown
execute if score @s Statues.Players matches 1201..1800 run item replace entity @s hotbar.4 with shield
execute if score @s Statues.abilities matches 1.. if score @s Statues.Players matches ..0 run scoreboard players set @s Statues.Players 1800

# Audios for the cooldown
execute if score @s Statues.Players matches 1800 run playsound block.enchantment_table.use block @s
execute if score @s Statues.Abilities matches 1 if score @s Statues.Players matches 1..1799 run playsound block.note_block.guitar block @s ~ ~ ~ 1 0.5

# Resets the interaction amount
execute if score @s Statues.abilities matches 1.. if score @s Statues.Players matches 1..1800 run scoreboard players set @s Statues.abilities 0

#> Internal timer
execute if score @s Statues.Players matches 1..1800 run scoreboard players remove @s Statues.Players 1

#> Removes shield after 30 seconds, then 60 seconds cooldown
execute if score @s Statues.Players matches 1..1200 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Retractable shield","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},HideFlags:4}
execute if score @s Statues.Players matches ..0 run item replace entity @s hotbar.4 with carrot_on_a_stick{Unbreakable:1,CustomModelData:3,display:{Name:'[{"text":"Retractable shield","italic":false,"color":"gray"}]',Lore:['[{"text":"Cooldown: 60 secs","italic":false}]']},Enchantments:[{}],HideFlags:4}

#> Prevents duplicates
execute store result score $Carrots Statues.ItemCount run clear @s carrot_on_a_stick 0
execute if score $Carrots Statues.ItemCount matches 2.. run clear @s carrot_on_a_stick

execute store result score $Shields Statues.ItemCount run clear @s shield 0
execute if score $Shields Statues.ItemCount matches 2.. run clear @s shield

#> Old way :skull:
# Hotbar EXCEPT the center slot
#execute as @a if data entity @s Inventory[{Slot:0b,id:"minecraft:shield"}] run item replace entity @s hotbar.0 with air
#execute as @a if data entity @s Inventory[{Slot:1b,id:"minecraft:shield"}] run item replace entity @s hotbar.1 with air
#execute as @a if data entity @s Inventory[{Slot:2b,id:"minecraft:shield"}] run item replace entity @s hotbar.2 with air
#execute as @a if data entity @s Inventory[{Slot:3b,id:"minecraft:shield"}] run item replace entity @s hotbar.3 with air

#execute as @a if data entity @s Inventory[{Slot:5b,id:"minecraft:shield"}] run item replace entity @s hotbar.5 with air
#execute as @a if data entity @s Inventory[{Slot:6b,id:"minecraft:shield"}] run item replace entity @s hotbar.6 with air
#execute as @a if data entity @s Inventory[{Slot:7b,id:"minecraft:shield"}] run item replace entity @s hotbar.7 with air
#execute as @a if data entity @s Inventory[{Slot:8b,id:"minecraft:shield"}] run item replace entity @s hotbar.8 with air

# Rest of inventory

#execute as @a if data entity @s Inventory[{Slot:9b,id:"minecraft:shield"}] run item replace entity @s inventory.0 with air
#execute as @a if data entity @s Inventory[{Slot:10b,id:"minecraft:shield"}] run item replace entity @s inventory.1 with air
#execute as @a if data entity @s Inventory[{Slot:11b,id:"minecraft:shield"}] run item replace entity @s inventory.2 with air
#execute as @a if data entity @s Inventory[{Slot:12b,id:"minecraft:shield"}] run item replace entity @s inventory.3 with air
#execute as @a if data entity @s Inventory[{Slot:13b,id:"minecraft:shield"}] run item replace entity @s inventory.4 with air
#execute as @a if data entity @s Inventory[{Slot:14b,id:"minecraft:shield"}] run item replace entity @s inventory.5 with air
#execute as @a if data entity @s Inventory[{Slot:15b,id:"minecraft:shield"}] run item replace entity @s inventory.6 with air
#execute as @a if data entity @s Inventory[{Slot:16b,id:"minecraft:shield"}] run item replace entity @s inventory.7 with air
#execute as @a if data entity @s Inventory[{Slot:17b,id:"minecraft:shield"}] run item replace entity @s inventory.8 with air

#execute as @a if data entity @s Inventory[{Slot:18b,id:"minecraft:shield"}] run item replace entity @s inventory.9 with air
#execute as @a if data entity @s Inventory[{Slot:19b,id:"minecraft:shield"}] run item replace entity @s inventory.10 with air
#execute as @a if data entity @s Inventory[{Slot:20b,id:"minecraft:shield"}] run item replace entity @s inventory.11 with air
#execute as @a if data entity @s Inventory[{Slot:21b,id:"minecraft:shield"}] run item replace entity @s inventory.12 with air
#execute as @a if data entity @s Inventory[{Slot:22b,id:"minecraft:shield"}] run item replace entity @s inventory.13 with air
#execute as @a if data entity @s Inventory[{Slot:23b,id:"minecraft:shield"}] run item replace entity @s inventory.14 with air
#execute as @a if data entity @s Inventory[{Slot:24b,id:"minecraft:shield"}] run item replace entity @s inventory.15 with air
#execute as @a if data entity @s Inventory[{Slot:25b,id:"minecraft:shield"}] run item replace entity @s inventory.16 with air
#execute as @a if data entity @s Inventory[{Slot:26b,id:"minecraft:shield"}] run item replace entity @s inventory.17 with air

#execute as @a if data entity @s Inventory[{Slot:27b,id:"minecraft:shield"}] run item replace entity @s inventory.18 with air
#execute as @a if data entity @s Inventory[{Slot:28b,id:"minecraft:shield"}] run item replace entity @s inventory.19 with air
#execute as @a if data entity @s Inventory[{Slot:29b,id:"minecraft:shield"}] run item replace entity @s inventory.20 with air
#execute as @a if data entity @s Inventory[{Slot:30b,id:"minecraft:shield"}] run item replace entity @s inventory.21 with air
#execute as @a if data entity @s Inventory[{Slot:31b,id:"minecraft:shield"}] run item replace entity @s inventory.22 with air
#execute as @a if data entity @s Inventory[{Slot:32b,id:"minecraft:shield"}] run item replace entity @s inventory.23 with air
#execute as @a if data entity @s Inventory[{Slot:33b,id:"minecraft:shield"}] run item replace entity @s inventory.24 with air
#execute as @a if data entity @s Inventory[{Slot:34b,id:"minecraft:shield"}] run item replace entity @s inventory.25 with air
#execute as @a if data entity @s Inventory[{Slot:35b,id:"minecraft:shield"}] run item replace entity @s inventory.26 with air

# Off-hand
#execute as @a if data entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}] run item replace entity @s weapon.offhand with air
