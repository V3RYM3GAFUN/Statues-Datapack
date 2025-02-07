# playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 0.5 0

effect give @s speed 4 4 true
effect give @s blindness 4 1 true
effect give @s nausea 10 0 true

give @s blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.bat.takeoff"},item_name='{"translate":"statues.item.runner.ability.name","italic":false,"color":"aqua"}',lore=['[{"translate":"statues.item.runner.ability.lore.line1","italic":false}]','[{"translate":"statues.item.runner.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"5"},{"text": "0"}]}]'],item_model="statues:survivors/abilities/dopamine"]

advancement revoke @s only statues:abilities/survivors/runner