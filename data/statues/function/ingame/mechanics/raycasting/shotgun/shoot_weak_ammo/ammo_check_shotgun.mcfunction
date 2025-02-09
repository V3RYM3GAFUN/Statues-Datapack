execute if items entity @s hotbar.* arrow[custom_data~{weak_ammo:1b}] run function statues:ingame/mechanics/raycasting/shotgun/shoot_weak_ammo/start

give @s stick[consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"minecraft:ui.button.click"},item_model="statues:weapons/survivors/shotgun",use_cooldown={seconds:1.0,cooldown_group:"bow"},custom_data={"is_shotgun":true,ammo_select:0b},item_name='[{"translate":"statues.item.shotgun","bold":true,"color":"dark_aqua"},{"text":" : "},{"translate":"statues.item.weak_ammo","bold":false}]']

advancement revoke @s only statues:guns/shotgun/weak_ammo