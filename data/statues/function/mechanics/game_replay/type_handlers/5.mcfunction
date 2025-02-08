execute unless function statues:feature_flags/check_game_replay_flags run return fail
$execute as @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] run function #statues:game_events/ingame/survivor_escaped
$execute as @n[tag=game_replay_player,scores={Statues.ReplayData=$(player)}] run tellraw @a [{"translate":"statues.game.facade.objective.escape","color":"aqua","with": [{"selector":"@s","bold": true}]}]
execute as @a at @e[tag=objective_facade_book,limit=1] run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
