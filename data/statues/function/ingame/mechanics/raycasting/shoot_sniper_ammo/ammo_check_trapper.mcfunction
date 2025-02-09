execute if items entity @s hotbar.* arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/trapper_gun",use_cooldown={seconds:0.5,cooldown_group:"bow"},custom_data={"is_trapper_gun":true,ammo_select:3b},item_name='[{"translate":"statues.item.trapper_gun","bold":true,"color":"black"},{"text":" : "},{"translate":"statues.item.sniper_ammo","bold":false}]']

advancement revoke @s only statues:guns/trapper/sniper_ammo