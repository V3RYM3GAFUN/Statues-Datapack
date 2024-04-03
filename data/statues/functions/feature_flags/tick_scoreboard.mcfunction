execute if score doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name doors Statues.FeatureFlags {"text":"Doors Feature"}

execute if score lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score lights Statues.FeatureFlags matches 0 run scoreboard players display numberformat lights Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name lights Statues.FeatureFlags {"text":"Lights Feature"}

execute if score power_doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score power_doors Statues.FeatureFlags matches 0 run scoreboard players display numberformat power_doors Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name power_doors Statues.FeatureFlags {"text":"Power Doors Feature"}

execute if score vents Statues.FeatureFlags matches 0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score vents Statues.FeatureFlags matches 0 run scoreboard players display numberformat vents Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
scoreboard players display name vents Statues.FeatureFlags {"text":"Vents Feature"}