advancement revoke @s only statues:abilities/survivors/medic

execute as @a[team=Survivor] at @s run playsound block.enchantment_table.use block @s

effect give @a[team=Survivor] regeneration 10 2 true
tellraw @a[team=Survivor] [{"translate": "statues.tell.medic.used_ability","with": [{"selector":"@s"}]}]

execute if items entity @s weapon *[custom_data~{medic_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/medic/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/medic/give_back {hand:"offhand"}