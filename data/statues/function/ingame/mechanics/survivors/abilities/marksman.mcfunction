playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
effect give @s glowing 6 0 true
effect give @e[team=Monster] glowing 12 0 true
tellraw @a [{"selector":"@s"},{"text":" used an X-ray on the monsters!"}]

give @s blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.lodestone_compass.lock"},custom_model_data={strings:["x-ray"]},custom_name='{"text":"X-ray","italic":false,"color":"gray"}',lore=['[{"text":"Reveals the monsters,","italic":false}]','[{"text":"but you get revealed too!","italic":false}]','[{"text":"Cooldown: 3m30s","italic":false}]']]

advancement revoke @s only statues:abilities/survivors/marksman