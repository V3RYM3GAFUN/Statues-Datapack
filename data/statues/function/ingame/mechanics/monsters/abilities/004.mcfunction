give @s blaze_rod[item_name='[{"translate": "statues.item.004.ability.name","color": "white","bold": true,"italic": false}]',use_cooldown={seconds:300},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.bee.hurt"},lore=['[{"translate":"statues.item.brawler.ability.lore.line1","italic":false}]','[{"translate":"statues.item.004.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"5"},{"text":"0"}]}]'],custom_data={"004_ability":true}] 1

execute positioned ~-5.5 ~ ~-5.5 run effect give @a[dx=10,dy=2,dz=10,team=Survivor] poison 10 0 true
particle entity_effect{color:[0.0,0.5,0.0,1.0]} ~ ~ ~ 10 2 10 0 1000 normal @a

advancement revoke @s only statues:abilities/monsters/004