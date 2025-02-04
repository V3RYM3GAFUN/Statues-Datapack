execute as @a[team=Survivor] at @s run playsound block.enchantment_table.use block @s

effect give @a[team=Survivor] regeneration 10 2 true
tellraw @a[team=Survivor] [{"selector":"@s"},{"translate": "statues.tell.medic.used_ability"}]

give @s blaze_rod[use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.stone.step"},custom_model_data={strings:[""]},custom_name='{"translate":"statues.item.ability.medic.name","italic":false,"color":"red"}',lore=['[{"translate":"statues.item.medic.ability.lore.line1","italic":false}]','[{"translate":"statues.item.medic.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.5min"}]}]']]

advancement revoke @s only statues:abilities/survivors/medic