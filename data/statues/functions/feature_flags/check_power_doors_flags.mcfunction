execute if score power_doors Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use Power Doors specific feature when the feature is disabled."}
execute if score power_doors Statues.FeatureFlags matches 0 run return fail
return 1