tag @s add first_join

advancement grant @s only statues:game/root
title @s title {"translate": "statues.lobby.welcome.title","color": "red","bold": true}
title @s subtitle {"translate": "statues.lobby.welcome.subtitle"}
playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 0.75

#> Teleports player to spawn because they can spawn on the roof for some reason
tp @s 0 0 0 0 0

team join Lobby @s