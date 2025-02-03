effect give @a[team=Monster] slowness 5 10 true
effect give @a[team=Monster] blindness 5 3 true
effect give @s slowness 7 3 true
effect give @s darkness 5 3 true
tellraw @a [{"selector": "@s"},{"text":" used an EMP shock on monsters!"}]

give @s minecraft:blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:block.conduit.deactivate"},custom_model_data={strings:["emp_shock"]},custom_name='{"text":"EMP shock","italic":false,"color":"gray"}',lore=['[{"text":"Slows down the monsters","italic":false}]','[{"text":"Will also affect the user.","italic":false}]','[{"text":"Cooldown: 3m30s","italic":false}]']]

advancement revoke @s only statues:abilities/survivors/trapper