execute if score desk_button Statues.FeatureFlags matches 1.. run return 1
tellraw @a[tag=dev_see_feature_flag_failed_uses] {"color":"red","text":"Tried to use Desk Button specific feature when the feature is disabled. @s=","extra":[{"selector":"@s"}]}
return fail