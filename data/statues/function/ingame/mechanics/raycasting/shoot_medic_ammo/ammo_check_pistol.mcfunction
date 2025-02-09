execute if items entity @s hotbar.* arrow[custom_data~{medic_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_medic_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/default_pistol",use_cooldown={seconds:0.3,cooldown_group:"bow"},custom_data={"is_gun":true,ammo_select:2b},item_name='[{"translate":"statues.item.gun","bold":true,"color": "red"},{"text": " : "},{"translate": "statues.item.medic.arrow","bold":false}]']

advancement revoke @s only statues:guns/pistol/medic_ammo