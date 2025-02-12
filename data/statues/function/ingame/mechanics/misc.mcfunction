execute if entity @a[scores={Statues.Drop=1..},limit=1] as @e[type=item] run function statues:ingame/mechanics/misc_on_drop
execute as @a[scores={Statues.Drop=1..}] run scoreboard players remove @s Statues.AmmoSelect 1

execute as @e[type=item] at @s run function statues:ingame/mechanics/misc_tick_item

execute as @a[team=Survivor] at @s if entity @n[tag=locker,distance=..2] run function statues:ingame/mechanics/survivors/locker

#> Tick the trapper trap
execute at @e[tag=trap,type=marker,limit=4,x=0] unless entity @e[tag=trap_display,type=item_display,distance=..1,limit=1] align xyz run summon item_display ~.5 ~ ~.5 {item:{id:breeze_rod},Tags:["trap_display"]}
execute as @a[team=Monster] at @s if entity @e[tag=trap,type=marker,distance=..3,limit=1] run function statues:ingame/mechanics/survivors/abilities/trapper/trigger_trap
execute as @e[tag=trap_display,type=item_display,limit=4,x=0] at @s unless entity @e[tag=trap,type=marker,distance=..1,limit=1] run kill @s

#> Detect if a player is looking at 000 
execute as @a[team=!Monster,gamemode=!spectator,x=0] at @s anchored eyes facing entity @a[scores={Statues.Monsters=0},advancements={statues:abilities/monsters/000=false}] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.25] run function statues:ingame/mechanics/monsters/000_freeze

#> If 000 is close, survivors get darkness
execute as @a[scores={Statues.Monsters=0}] at @s positioned ~-5.5 ~ ~-5.5 run effect give @a[dx=10,dy=3,dz=10,team=Survivor] darkness 2 0 true