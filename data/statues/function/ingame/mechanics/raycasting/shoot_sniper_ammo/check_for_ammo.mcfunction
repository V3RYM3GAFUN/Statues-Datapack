execute if items entity @s hotbar.* arrow[custom_data~{sniper_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_sniper_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/default_pistol",use_cooldown={seconds:0.3,cooldown_group:"bow"},custom_data={"is_gun":true,ammo_select:3b},item_name='[{"translate":"statues.item.gun","italic":false,"bold":true,"color": "black"},{"text": " : ","color": "dark_gray"},{"translate": "statues.item.sniper_ammo","italic":false,"bold":false,"color": "black"}]']

advancement revoke @s only statues:guns/sniper_ammo