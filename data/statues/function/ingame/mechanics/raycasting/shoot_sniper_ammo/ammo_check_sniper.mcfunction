execute if items entity @s hotbar.* arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/sniper",use_cooldown={seconds:1,cooldown_group:"bow"},custom_data={"is_sniper":true,ammo_select:3b},item_name='[{"translate":"statues.item.sniper","bold":true,"color":"black"},{"text":" : "},{"translate":"statues.item.sniper_ammo","bold":false}]']

advancement revoke @s only statues:guns/sniper/sniper_ammo