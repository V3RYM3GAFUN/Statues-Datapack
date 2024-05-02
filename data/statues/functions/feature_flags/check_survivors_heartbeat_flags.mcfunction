execute if score survivors_heartbeat Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Survivors' Heartbeat specific feature when the feature is disabled."}
return fail