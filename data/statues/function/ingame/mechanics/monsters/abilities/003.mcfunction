item replace entity @s weapon.mainhand with blaze_rod[custom_name='{"translate": "statues.item.003.ability.name","color": "dark_gray","bold": true,"italic": false}',use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},custom_model_data={strings:["003_ability"]},lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.003.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"5"},{"text":"0"}]}]']]

execute as @a[team=Survivor] if score @s Statues.Survivors matches ..19 run effect give @s glowing 5 0 true

advancement revoke @s only statues:abilities/monsters/003