execute if items entity @s hotbar.* arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shoot_weak_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/medic_gun",use_cooldown={seconds:0.75,cooldown_group:"bow"},custom_data={"is_medic_gun":true,ammo_select:0b},item_name='[{"translate":"statues.item.medic_gun","bold":true,"color":"dark_aqua"},{"text":" : "},{"translate":"statues.item.weak_ammo","bold":false}]']

advancement revoke @s only statues:guns/medic/weak_ammo