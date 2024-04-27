execute if entity @s[team=Survivor,scores={Statues.Barrels=1..},predicate=statues:holding_crowbar] run function #statues:game_events/open_barrel
execute if entity @s[team=Monster,scores={Statues.Barrels=1..}] run function statues:ingame/mechanics/monsters/monster_anti_barrel
scoreboard players reset @s Statues.Barrels