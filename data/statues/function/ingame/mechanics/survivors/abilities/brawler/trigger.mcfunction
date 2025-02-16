advancement revoke @s only statues:abilities/survivors/brawler

# attribute @s knockback_resistance base set 0
effect give @s resistance 5 255 true

execute if items entity @s weapon *[custom_data~{brawler_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/brawler/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/brawler/give_back {hand:"offhand"}