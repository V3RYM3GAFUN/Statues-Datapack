advancement revoke @s only statues:abilities/survivors/cloaker

playsound entity.enderman.teleport block @s ~ ~ ~ 1 0.75

effect give @s invisibility 10 0 true

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

schedule function statues:ingame/mechanics/survivors/abilities/cloaker/give_armor_back 10s append

execute if items entity @s weapon *[custom_data~{cloaker_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/cloaker/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/cloaker/give_back {hand:"offhand"}