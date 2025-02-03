playsound entity.enderman.teleport block @s ~ ~ ~ 1 0.75

effect give @s invisibility 10 0 true

give @s blaze_rod[use_cooldown={seconds:30},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.enderman.teleport"},custom_model_data={strings:[""]},custom_name='{"text":"Invisibility cloak","italic":false,"color":"dark_purple"}',lore=['{"text":"Cooldown: 30 secs","italic":false}']]

advancement revoke @s only statues:abilities/survivors/cloaker