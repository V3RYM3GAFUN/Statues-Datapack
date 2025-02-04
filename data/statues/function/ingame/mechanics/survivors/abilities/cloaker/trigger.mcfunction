playsound entity.enderman.teleport block @s ~ ~ ~ 1 0.75

effect give @s invisibility 10 0 true

give @s blaze_rod[use_cooldown={seconds:30},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.enderman.teleport"},custom_model_data={strings:[""]},custom_name='{"translate":"statues.item.cloaker.ability.name","italic":false,"color":"dark_purple"}',lore=['[{"translate":"statues.item.cooldown","with":[{"translate":"statues.text.30sec"}]}]']]

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

schedule function statues:ingame/mechanics/survivors/abilities/cloaker/give_armor_back 10s append

advancement revoke @s only statues:abilities/survivors/cloaker