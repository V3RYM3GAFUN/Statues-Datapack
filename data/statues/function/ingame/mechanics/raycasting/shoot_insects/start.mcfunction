tag @s add raycaster

execute anchored eyes positioned ^ ^ ^ run function statues:ingame/mechanics/raycasting/shoot_insects/tick

give @s stick[item_name='[{"translate":"statues.item.004.weapon","italic":false,"color":"white","bold":true}]',item_model="statues:weapons/monsters/insect",consumable={animation:bow,consume_seconds:0.01,has_consume_particles:false,sound:"entity.bee.death"},custom_data={insect_launcher:true},use_cooldown={seconds:5}]
tag @s remove raycaster
scoreboard players reset $RaycastDistance Statues.Raycast

advancement revoke @s only statues:guns/insects