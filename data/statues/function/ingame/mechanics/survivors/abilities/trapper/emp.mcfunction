effect give @a[team=Monster] slowness 5 10 true
effect give @a[team=Monster] blindness 5 3 true
effect give @s slowness 7 3 true
effect give @s darkness 5 3 true
tellraw @a [{"translate":"statues.tell.trapper.used_ability","with": [{"selector": "@s"}]}]

item replace entity @s weapon.mainhand with minecraft:blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:block.conduit.deactivate"},custom_model_data={strings:["emp_shock"]},custom_name='{"translate":"statues.item.trapper.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.trapper.ability.lore.line1","italic":false}]','[{"translate":"statues.item.trapper.ability.lore.line2","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.3m30s"}]}]']]

advancement revoke @s only statues:abilities/survivors/trapper