scoreboard objectives add Statues.GameEventData trigger
scoreboard objectives add Statues.GameEventEnum trigger


scoreboard players set $GameEndCause.NoTime Statues.GameEventEnum 0
scoreboard players operation $GameEndCause._Min Statues.GameEventEnum = $GameEndCause.NoTime Statues.GameEventEnum
scoreboard players set $GameEndCause.SurvivorsEscaped Statues.GameEventEnum 1
scoreboard players set $GameEndCause.NoMonsters Statues.GameEventEnum 2
scoreboard players set $GameEndCause.NoSurvivors Statues.GameEventEnum 3
scoreboard players set $GameEndCause.GameReset Statues.GameEventEnum 4
scoreboard players operation $GameEndCause._Max Statues.GameEventEnum = $GameEndCause.GameReset Statues.GameEventEnum

# Façade Keys 
scoreboard players set $KeyKind.Generator Statues.GameEventEnum 0

scoreboard players operation $KeyKind._Min Statues.GameEventEnum = $KeyKind.Generator Statues.GameEventEnum

scoreboard players set $KeyKind.Lab Statues.GameEventEnum 1
scoreboard players set $KeyKind.HighClass Statues.GameEventEnum 2
scoreboard players set $KeyKind.Book Statues.GameEventEnum 3
# Armory Key is an exception
scoreboard players set $KeyKind.Armory Statues.GameEventEnum 4

# Lockdown Keys
scoreboard players set $KeyKind.Fuel Statues.GameEventEnum 5
scoreboard players set $KeyKind.Keycard1 Statues.GameEventEnum 6
scoreboard players set $KeyKind.Keycard2 Statues.GameEventEnum 7
scoreboard players set $KeyKind.Code Statues.GameEventEnum 8

scoreboard players operation $KeyKind._Max Statues.GameEventEnum = $KeyKind.Code Statues.GameEventEnum


scoreboard players set $ClassKind.Brawler Statues.GameEventEnum 0
scoreboard players operation $ClassKind._Min Statues.GameEventEnum = $ClassKind.Brawler Statues.GameEventEnum
scoreboard players set $ClassKind.Cloaker Statues.GameEventEnum 1
scoreboard players set $ClassKind.Gunner Statues.GameEventEnum 2
scoreboard players set $ClassKind.Juggernaut Statues.GameEventEnum 3
scoreboard players set $ClassKind.Marksman Statues.GameEventEnum 4
scoreboard players set $ClassKind.Medic Statues.GameEventEnum 5
scoreboard players set $ClassKind.Runner Statues.GameEventEnum 6
scoreboard players set $ClassKind.Shotgunner Statues.GameEventEnum 7
scoreboard players set $ClassKind.Trapper Statues.GameEventEnum 8
scoreboard players operation $ClassKind._Max Statues.GameEventEnum = $ClassKind.Trapper Statues.GameEventEnum


scoreboard players set $MonsterKind.000 Statues.GameEventEnum 0
scoreboard players operation $MonsterKind._Min Statues.GameEventEnum = $MonsterKind.000 Statues.GameEventEnum
scoreboard players set $MonsterKind.001 Statues.GameEventEnum 1
scoreboard players set $MonsterKind.002 Statues.GameEventEnum 2
scoreboard players set $MonsterKind.003 Statues.GameEventEnum 3
scoreboard players set $MonsterKind.004 Statues.GameEventEnum 4
scoreboard players operation $MonsterKind._Max Statues.GameEventEnum = $MonsterKind.004 Statues.GameEventEnum

# Façade Objectives
scoreboard players set $ObjectiveKind.Facade.FindBackupGeneratorKey Statues.GameEventEnum 0
scoreboard players operation $ObjectiveKind.Facade._Min Statues.GameEventEnum = $ObjectiveKind.Facade.FindBackupGeneratorKey Statues.GameEventEnum

scoreboard players operation $ObjectiveKind._Min Statues.GameEventEnum = $ObjectiveKind.Facade.FindBackupGeneratorKey Statues.GameEventEnum

scoreboard players set $ObjectiveKind.Facade.UnlockBackupGenerator Statues.GameEventEnum 1
scoreboard players set $ObjectiveKind.Facade.StartBackupGenerator Statues.GameEventEnum 2
scoreboard players set $ObjectiveKind.Facade.FindLabKey Statues.GameEventEnum 3
scoreboard players set $ObjectiveKind.Facade.UnlockLabDoors Statues.GameEventEnum 4
scoreboard players set $ObjectiveKind.Facade.PressEmergencyOverride Statues.GameEventEnum 5
scoreboard players set $ObjectiveKind.Facade.TurnOnPower Statues.GameEventEnum 6
scoreboard players set $ObjectiveKind.Facade.FindHighClassKey Statues.GameEventEnum 7
scoreboard players set $ObjectiveKind.Facade.UnlockHighClassOffices Statues.GameEventEnum 8
scoreboard players set $ObjectiveKind.Facade.FindConfidentialBook Statues.GameEventEnum 9

scoreboard players set $ObjectiveKind.Facade.Escape Statues.GameEventEnum 10
scoreboard players operation $ObjectiveKind.Facade._Max Statues.GameEventEnum = $ObjectiveKind.Facade.Escape Statues.GameEventEnum

#> Lockdown Objectives
scoreboard players set $ObjectiveKind.Lockdown.FindFuel Statues.GameEventEnum 11
scoreboard players operation $ObjectiveKind.Lockdown._Min Statues.GameEventEnum = $ObjectiveKind.Lockdown.FindFuel Statues.GameEventEnum

scoreboard players set $ObjectiveKind.Lockdown.UseFuel Statues.GameEventEnum 12
scoreboard players set $ObjectiveKind.Lockdown.StartBackupGenerator Statues.GameEventEnum 13
scoreboard players set $ObjectiveKind.Lockdown.FindKeycard1 Statues.GameEventEnum 14
scoreboard players set $ObjectiveKind.Lockdown.PressEmergencyOverride Statues.GameEventEnum 15
scoreboard players set $ObjectiveKind.Lockdown.TurnOnPower Statues.GameEventEnum 16
scoreboard players set $ObjectiveKind.Lockdown.FindKeycard2 Statues.GameEventEnum 17
scoreboard players set $ObjectiveKind.Lockdown.UnlockContainment Statues.GameEventEnum 18
scoreboard players set $ObjectiveKind.Lockdown.FindCode Statues.GameEventEnum 19
scoreboard players set $ObjectiveKind.Lockdown.UseCode Statues.GameEventEnum 20

scoreboard players set $ObjectiveKind.Lockdown.Escape Statues.GameEventEnum 21
scoreboard players operation $ObjectiveKind.Lockdown._Max Statues.GameEventEnum = $ObjectiveKind.Lockdown.Escape Statues.GameEventEnum

scoreboard players operation $ObjectiveKind._Max Statues.GameEventEnum = $ObjectiveKind.Lockdown.Escape Statues.GameEventEnum