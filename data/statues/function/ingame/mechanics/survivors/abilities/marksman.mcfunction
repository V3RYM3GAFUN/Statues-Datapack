playsound item.lodestone_compass.lock ambient @s ~ ~ ~ 2 2
effect give @s glowing 6 0 true
effect give @e[team=Monster] glowing 12 0 true
tellraw @a [{"selector":"@s"},{"translate":"statues.tell.marksman.used_ability"}]

give @s blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.lodestone_compass.lock"},custom_model_data={strings:["x-ray"]},custom_name='{"translate":"statues.item.marksman.ability.name","italic":false,"color":"gray"}',lore=['[{"translate":"statues.item.marksman.ability.lore.line1","italic":false}]','[{"translate":"statues.item.marksman.ability.lore.line2","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.3m30s"}]}]']]

advancement revoke @s only statues:abilities/survivors/marksman