advancement revoke @s only statues:abilities/survivors/gunner

loot give @s loot statues:items/classes/gunner/weak_anti_anomaly_ammo

execute if items entity @s weapon *[custom_data~{gunner_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/gunner/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/gunner/give_back {hand:"offhand"}