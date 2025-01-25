execute unless function statues:feature_flags/check_class_preview_flags run return fail

#> Ticks whoever has those classes.
execute as @a[tag=trapper] at @s run function statues:ingame/maps/facade/classes/trapper/abilities
execute as @a[tag=cloaker] at @s run function statues:ingame/maps/facade/classes/cloaker/abilities
execute as @a[tag=medic] at @s run function statues:ingame/maps/facade/classes/medic/abilities
execute as @a[tag=runner] at @s run function statues:ingame/maps/facade/classes/runner/abilities
execute as @a[tag=gunner] at @s run function statues:ingame/maps/facade/classes/gunner/abilities
execute as @a[tag=juggernaut] at @s run function statues:ingame/maps/facade/classes/juggernaut/abilities
execute as @a[tag=brawler] at @s run function statues:ingame/maps/facade/classes/brawler/abilities
execute as @a[tag=marksman] at @s run function statues:ingame/maps/facade/classes/marksman/abilities
execute as @a[tag=shotgunner] at @s run function statues:ingame/maps/facade/classes/shotgunner/abilities


execute unless entity @e[type=zombie] at @e[tag=lobby_class_zombie] run summon zombie
execute as @e[type=zombie] run team join Monster @s