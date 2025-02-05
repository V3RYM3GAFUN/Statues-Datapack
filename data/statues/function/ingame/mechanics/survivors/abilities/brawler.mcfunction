attribute @s knockback_resistance base set 0
effect give @s resistance 5 255 true

give @s blaze_rod[use_cooldown={seconds:90},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},custom_model_data={strings:["brawler_ability"]},custom_name='{"translate":"statues.item.brawler.ability.name","italic":false,"color":"dark_purple"}',lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.brawler.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.sec","with":[{"text":"90"}]}]']]

advancement revoke @s only statues:abilities/survivors/brawler