advancement revoke @s only statues:abilities/monsters/000

clear @s
effect give @s invisibility 10 0 true
effect give @s weakness 10 255 true

schedule function statues:ingame/mechanics/monsters/abilities/000/reset 10s replace

execute if items entity @s weapon *[custom_data~{000_ability:true}] run return run function statues:ingame/mechanics/monsters/abilities/000/give_back {hand:"mainhand"}
function statues:ingame/mechanics/monsters/abilities/000/give_back {hand:"offhand"}