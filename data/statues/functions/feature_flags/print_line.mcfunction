#$execute if score $0 Statues.Data matches $(is_dev) if score $(selector) Statues.FeatureFlags matches ..0 run tellraw @s [{"text":"$(name) Feature [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"}]
#$execute if score $0 Statues.Data matches $(is_dev) if score $(selector) Statues.FeatureFlags matches 1.. run tellraw @s [{"text":"$(name) Feature [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]
#$execute unless score $0 Statues.Data matches $(is_dev) if score $(selector) Statues.FeatureFlags matches ..0 run tellraw @s [{"text":"[Dev] ","color":"gold"},{"text":"$(name) Feature [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"}]
#$execute unless score $0 Statues.Data matches $(is_dev) if score $(selector) Statues.FeatureFlags matches 1.. run tellraw @s [{"text":"[Dev] ","color":"gold"},{"text":"$(name) Feature [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]

$execute if score $0 Statues.Data matches $(is_dev) run tellraw @s [{"text":"$(name) Feature: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"$(selector)"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]
$execute unless score $0 Statues.Data matches $(is_dev) run tellraw @s [{"text":"[Dev] ","color":"gold"},{"text":"$(name) Feature: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"$(selector)"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]
