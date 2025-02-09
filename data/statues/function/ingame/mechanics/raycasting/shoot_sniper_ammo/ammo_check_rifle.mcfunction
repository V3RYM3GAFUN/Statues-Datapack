execute if items entity @s hotbar.* tipped_arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/rifle",use_cooldown={seconds:0.5,cooldown_group:"bow"},custom_data={"is_rifle":true,ammo_select:3b},item_name='[{"translate":"statues.item.rifle","bold":true,"color":"black"},{"text":" : "},{"translate":"statues.item.sniper_ammo","bold":false}]']

advancement revoke @s only statues:guns/rifle/sniper_ammo