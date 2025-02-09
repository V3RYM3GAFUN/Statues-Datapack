execute if items entity @s hotbar.* tipped_arrow[custom_data~{strong_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_strong_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/medic_gun",use_cooldown={seconds:0.75,cooldown_group:"bow"},custom_data={"is_medic_gun":true,ammo_select:1b},item_name='[{"translate":"statues.item.medic_gun","bold":true,"color":"blue"},{"text":" : "},{"translate":"statues.item.strong_ammo","bold":false}]']

advancement revoke @s only statues:guns/medic/strong_ammo