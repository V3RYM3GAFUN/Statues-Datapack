advancement revoke @s only statues:abilities/survivors/marksman

playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
effect give @s glowing 6 0 true
effect give @e[team=Monster] glowing 12 0 true
tellraw @a [{"translate":"statues.tell.marksman.used_ability","with": [{"selector":"@s"}]}]

execute if items entity @s weapon *[custom_data~{marksman_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/marksman/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/marksman/give_back {hand:"offhand"}