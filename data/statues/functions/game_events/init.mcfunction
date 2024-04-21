scoreboard objectives add Statues.GameEventData trigger
scoreboard objectives add Statues.GameEventEnum trigger


scoreboard players set $GameEndCause.NoTime Statues.GameEventEnum 0
scoreboard players operation $GameEndCause._Min Statues.GameEventEnum = $GameEndCause.NoTime Statues.GameEventEnum
scoreboard players set $GameEndCause.SurvivorsEscaped Statues.GameEventEnum 1
scoreboard players set $GameEndCause.NoMonsters Statues.GameEventEnum 2
scoreboard players set $GameEndCause.NoSurvivors Statues.GameEventEnum 3
scoreboard players set $GameEndCause.GameReset Statues.GameEventEnum 4
scoreboard players operation $GameEndCause._Max Statues.GameEventEnum = $GameEndCause.GameReset Statues.GameEventEnum


scoreboard players set $KeyKind.Generator Statues.GameEventEnum 0
scoreboard players operation $KeyKind._Min Statues.GameEventEnum = $KeyKind.Generator Statues.GameEventEnum
scoreboard players set $KeyKind.Lab Statues.GameEventEnum 1
scoreboard players set $KeyKind.HighClass Statues.GameEventEnum 2
scoreboard players set $KeyKind.Book Statues.GameEventEnum 3
scoreboard players operation $KeyKind._Max Statues.GameEventEnum = $KeyKind.Book Statues.GameEventEnum


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
