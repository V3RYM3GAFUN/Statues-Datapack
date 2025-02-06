clear @s
effect give @s invisibility 10 0 true
effect give @s weakness 10 255 true

give @s blaze_rod[custom_name='{"translate": "statues.item.000.ability.name","color": "#2e2e2e","bold": true,"italic": false}',use_cooldown={seconds:90},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"block.anvil.place"},lore=['[{"translate":"statues.item.000.ability.lore.line1","italic":false}]','[{"translate":"statues.item.000.ability.lore.line2","italic":false}]','[{"translate":"statues.item.cooldown.min","with":[{"text":"1"},{"text":"30"}]}]']]

schedule function statues:ingame/mechanics/monsters/abilities/000/reset 10s replace