$execute as $(player) at @s if entity @s[team=Survivor] run spawnpoint @s ~ ~ ~ ~
$execute as $(player) run kill @s[team=Survivor]
$scoreboard players set $(player) Statues.Dead 0
$team join Lobby $(player)
$tp $(player) @r[team=Survivor]
$team join Survivor $(player)
$effect clear $(player) minecraft:night_vision
$tag $(player) remove solo
$tag $(player) remove cloaker
$tag $(player) remove medic
$tag $(player) remove juggernaut
$tag $(player) remove runner
$tag $(player) remove shotgunner
$tag $(player) remove gunner
$tag $(player) remove brawler
$tag $(player) remove marksman
$tag $(player) remove trapper
$tag $(player) add $(class)
$clear $(player)
$execute as $(player) run function statues:ingame/maps/facade/classes/$(class)/kit