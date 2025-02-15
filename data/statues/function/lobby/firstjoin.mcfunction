advancement grant @s only statues:game/root

advancement grant @s only statues:game/root
title @s title {"translate": "statues.lobby.welcome.title","color": "red","bold": true}
title @s subtitle {"translate": "statues.lobby.welcome.subtitle"}
playsound minecraft:block.chest.open master @s ~ ~ ~ 0.5 0.75

#> Starts the music handler for that player
scoreboard players set @s Statues.SongSelect 1
scoreboard players set @s Statues.SongTimer -1

#> Teleports player to spawn because they can spawn on the roof for some reason
function statues:warps/newlobby

team join Lobby @s