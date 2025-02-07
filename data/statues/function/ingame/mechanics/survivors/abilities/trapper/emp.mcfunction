effect give @a[team=Monster,distance=..15] slowness 5 6 true
effect give @a[team=Monster,distance=..15] blindness 5 3 true
effect give @s slowness 7 4 true
effect give @s darkness 5 3 true
tellraw @a [{"translate":"statues.tell.trapper.used_ability","with": [{"selector": "@s"}]}]

give @s minecraft:blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:block.conduit.deactivate"},item_name='{"translate":"statues.item.trapper.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.trapper.ability.lore.line1","italic":false}]','[{"translate":"statues.item.trapper.ability.lore.line2","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"3"},{"text": "30"}]}]'],item_model="statues/survivors/abilities/emp_shock"]

advancement revoke @s only statues:abilities/survivors/trapper