# playsound minecraft:entity.bat.takeoff block @a ~ ~ ~ 0.5 0

effect give @s speed 4 4 true
effect give @s blindness 4 1 true
effect give @s nausea 10 0 true

give @s blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.bat.takeoff"},custom_model_data={strings:["dopamine"]},custom_name='{"text":"Adrenaline","italic":false,"color":"aqua"}',lore=['[{"text":"Extreme speed boost,","italic":false}]','[{"text":"but at the cost of sight","italic":false}]','[{"text":"Cooldown: 5min","italic":false}]']]

advancement revoke @s only statues:abilities/survivors/runner