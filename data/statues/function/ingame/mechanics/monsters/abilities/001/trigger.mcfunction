advancement revoke @s only statues:abilities/monsters/001

execute as @s at @s positioned ^ ^ ^0.5 run tp @p[team=Survivor,distance=..5] ~ ~ ~

execute if items entity @s weapon *[custom_data~{001_ability:true}] run return run function statues:ingame/mechanics/monsters/abilities/001/give_back {hand:"mainhand"}
function statues:ingame/mechanics/monsters/abilities/001/give_back {hand:"offhand"}