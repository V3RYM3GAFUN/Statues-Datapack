execute unless function statues:feature_flags/check_map_tick_flags run return fail

scoreboard players add $RunningGameTicks Statues.DynamicData 1

execute as @a[scores={Statues.Monsters=4}] run item replace entity @s hotbar.4 with tipped_arrow[item_name='[{"translate":"statues.item.004.weapon","italic":false,"color":"#006633","bold":true}]',potion_contents={custom_color:2325012,custom_effects:[{id:"minecraft:poison",duration:60,amplifier:1,show_particles:0b,show_icon:0b},{id:"minecraft:instant_health",duration:1,amplifier:1,show_particles:0b,show_icon:0b}]}] 1

execute as @a[scores={Statues.Barrels=1..}] at @s run function statues:ingame/maps/common/barrel_click
execute as @a[tag=hidden,team=Survivor] at @s run function #statues:game_events/ingame/tick_hiding
