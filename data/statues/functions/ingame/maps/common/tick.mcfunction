execute unless function statues:feature_flags/check_map_tick_flags run return fail

scoreboard players add $RunningGameTicks Statues.DynamicData 1

execute as @a[scores={Statues.Monsters=4}] run item replace entity @s hotbar.4 with tipped_arrow{CustomPotionColor:2325012,display:{Name:'[{"text":"Insects","italic":false,"color":"#006633","bold":true}]'},custom_potion_effects:[{id:"minecraft:poison",duration:60,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:instant_health",duration:1,amplifier:0,show_particles:0b,show_icon:0b}]} 1

execute as @a[scores={Statues.Barrels=1..}] at @s run function statues:ingame/maps/common/barrel_click
execute as @a[tag=hidden,team=Survivor] at @s run function #statues:game_events/ingame/tick_hiding
