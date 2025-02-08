execute unless function statues:feature_flags/check_game_replay_flags run return fail
$scoreboard players set $EndCause Statues.GameEventData $(reason)
function #statues:game_events/ingame/game_end