execute unless function statues:feature_flags/check_game_replay_flags run return fail
data modify storage statues:game_replay current_replay.frames append from storage statues:game_replay current_replay.current_frame
data modify storage statues:game_replay current_replay.current_frame set value []