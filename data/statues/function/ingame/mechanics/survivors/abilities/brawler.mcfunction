execute if score @s Statues.Players matches ..600 run attribute @s knockback_resistance base set 0

give @s blaze_rod[use_cooldown={seconds:90},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},custom_model_data={strings:[""]},custom_name='{"translate":"statues.item.brawler_ability.name","italic":false,"color":"dark_purple"}',lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.brawler.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.90sec"}]}]']]

advancement revoke @s only statues:abilities/survivors/brawler