execute if score experimental_flashlight Statues.FeatureFlags matches 1.. run return 1
tellraw @a {"color":"red","text":"Tried to use Flashlight (Next) specific feature when the feature is disabled."}
return fail