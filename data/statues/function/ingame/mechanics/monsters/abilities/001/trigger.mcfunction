item replace entity @s weapon.mainhand with blaze_rod[custom_name='{"translate": "statues.item.001.ability.name","color": "dark_gray","bold": true,"italic": false}',use_cooldown={seconds:180},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},custom_model_data={strings:["001_ability"]},lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.001.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"3"},{"text":"0"}]}]']]

execute as @s at @s positioned ^ ^ ^1 run tp @p[team=Survivor,distance=..5] ~ ~ ~

advancement revoke @s only statues:abilities/monsters/001