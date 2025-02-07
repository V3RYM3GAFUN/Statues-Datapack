effect give @s saturation infinite 0 true

execute if entity @s[advancements={statues:game/root=false}] run function statues:lobby/firstjoin

effect give @s[team=Spectator] minecraft:night_vision infinite 0 true
effect clear @s[team=Lobby] minecraft:night_vision
effect give @s[team=Lobby] resistance infinite 10 true


execute if entity @s[team=Survivor,scores={Statues.Dead=1..}] run function statues:ingame/mechanics/survivors/death
scoreboard players set @s[team=!Survivor] Statues.Dead 0

execute if score @s Player.Leave matches 1.. run function statues:lobby/leaving