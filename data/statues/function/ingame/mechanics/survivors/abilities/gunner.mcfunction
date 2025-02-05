loot give @s loot statues:items/classes/gunner/weak_anti_anomaly_ammo

item replace entity @s weapon.mainhand with blaze_rod[use_cooldown={seconds:210},consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"item.armor.equip_netherite"},custom_model_data={strings:["ammo"]},custom_name='{"text":"Ammo Pack","italic":false,"color":"dark_aqua"}',lore=['{"text":"Cooldown: 3m30s","italic":false}']]

advancement revoke @s only statues:abilities/survivors/gunner