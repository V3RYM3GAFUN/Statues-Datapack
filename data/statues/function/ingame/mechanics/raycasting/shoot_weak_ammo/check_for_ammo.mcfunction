execute if items entity @s hotbar.* arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/default_pistol",use_cooldown={seconds:0.3,cooldown_group:"bow"},custom_data={"is_gun":true,ammo_select:0b},item_name='[{"translate":"statues.item.gun","italic":false,"bold":true,"color": "dark_aqua"},{"text": " : ","color": "dark_aqua"},{"translate": "statues.item.weak_ammo","italic":false,"bold":false,"color": "dark_aqua"}]']

advancement revoke @s only statues:guns/weak_ammo