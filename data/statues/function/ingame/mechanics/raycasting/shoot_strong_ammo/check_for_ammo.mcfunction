execute if items entity @s hotbar.* arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_strong_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/default_pistol",use_cooldown={seconds:0.3,cooldown_group:"bow"},custom_data={"is_gun":true,ammo_select:1b},item_name='[{"translate":"statues.item.gun","italic":false,"bold":true,"color": "blue"},{"text": " : ","color": "blue"},{"translate": "statues.item.strong_ammo","italic":false,"bold":false,"color": "blue"}]']

advancement revoke @s only statues:guns/strong_ammo