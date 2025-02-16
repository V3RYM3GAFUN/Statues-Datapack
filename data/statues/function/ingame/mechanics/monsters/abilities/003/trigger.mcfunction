advancement revoke @s only statues:abilities/monsters/003

execute as @a[team=Survivor] if score @s Statues.Survivors matches ..19 run effect give @s glowing 5 0 true

execute if items entity @s weapon *[custom_data~{003_ability:true}] run return run function statues:ingame/mechanics/monsters/abilities/003/give_back {hand:"mainhand"}
function statues:ingame/mechanics/monsters/abilities/003/give_back {hand:"offhand"}