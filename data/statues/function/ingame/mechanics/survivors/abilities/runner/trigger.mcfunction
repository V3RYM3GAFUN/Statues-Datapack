# playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 0.5 0
advancement revoke @s only statues:abilities/survivors/runner

effect give @s speed 4 4 true
effect give @s blindness 4 1 true
effect give @s nausea 10 0 true

execute if items entity @s weapon *[custom_data~{runner_ability:true}] run return run function statues:ingame/mechanics/survivors/abilities/runner/give_back {hand:"mainhand"}
function statues:ingame/mechanics/survivors/abilities/runner/give_back {hand:"offhand"}