#> Gives survivors weakness to prevent them from hitting each other. This is used so the medic can still shoot his healing arrows
effect give @a[team=Survivor] weakness infinite 0 true

execute if entity @a[scores={Statues.Drop=1..}] as @e[type=item] run function statues:ingame/mechanics/misc_on_drop
execute as @e[type=item] at @s run function statues:ingame/mechanics/misc_tick_item

execute as @a[team=Survivor] at @s if entity @e[tag=locker,distance=..2] run function statues:ingame/mechanics/survivors/locker

#> Tick the trapper trap
execute at @e[tag=trap,type=marker,x=0,limit=4] unless entity @e[tag=trap_display,type=item_display,distance=..1] align xyz run summon item_display ~.5 ~ ~.5 {item:{id:breeze_rod,components:{custom_model_data:{strings:["trap"]}}},Tags:["trap_display"]} 
execute as @a[team=Monster] at @s if entity @n[tag=trap,type=marker,distance=..3] run function statues:ingame/mechanics/survivors/abilities/trapper/trigger_trap
execute as @e[tag=trap_display,type=item_display,limit=4] at @s unless entity @e[tag=trap,type=marker,distance=..1] run kill @s

#> Detect if a player is looking at 000 ?
execute if entity @s facing entity @p[scores={Statues.Monsters=0}] eyes as @s run function statues:ingame/mechanics/monsters/000_freeze