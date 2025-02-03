execute as @a[team=Survivor] at @s run playsound block.enchantment_table.use block @s

effect give @a[team=Survivor] regeneration 10 2 true
tellraw @a[team=Survivor] [{"selector":"@s"},{"text": " used healing nanobots on the team!"}]

give @s blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.stone.step"},custom_model_data={strings:[""]},custom_name='{"text":"Healing nanobots","italic":false,"color":"red"}',lore=['[{"text":"Gives your entire team a powerful","italic":false}]','[{"text":"regen for 10 seconds","italic":false}]','[{"text":"Cooldown: 5min","italic":false}]']]

advancement revoke @s only statues:abilities/survivors/medic