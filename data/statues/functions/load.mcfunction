tellraw @a {"text":"Statues. Indev Datapack", "color": "#00AAAA"}

scoreboard objectives add Statues.Monsters playerKillCount "Monsters"
scoreboard objectives add Statues.Survivors dummy "Survivors"
scoreboard objectives setdisplay sidebar.team.aqua Statues.Survivors
scoreboard objectives add Statues.Health health "Health"
scoreboard objectives add Statues.Heartbeat dummy
scoreboard objectives setdisplay below_name Statues.Health 
scoreboard objectives modify Statues.Health rendertype hearts
scoreboard objectives setdisplay sidebar.team.dark_red Statues.Monsters
scoreboard objectives add Statues.Dead deathCount
scoreboard objectives add Statues.Data dummy
scoreboard objectives add Statues.MapVote dummy
scoreboard objectives modify Statues.MapVote displayname "Map vote"
scoreboard objectives add Statues.Objective xp
scoreboard objectives add Player.Leave minecraft.custom:minecraft.leave_game
scoreboard players set $Status Statues.Data 0
scoreboard objectives add Statues.Abilities minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Statues.Players dummy
scoreboard objectives add Statues.DoorData dummy
scoreboard objectives add Statues.TutorialObjective dummy

scoreboard players set $-1 Statues.Data -1
scoreboard players set $2 Statues.Data 2
scoreboard players set $20 Statues.Data 20
scoreboard players set $45 Statues.Data 45
scoreboard players set $90 Statues.Data 90

bossbar add countdown "Starting in..."
bossbar set countdown color yellow
bossbar set countdown max 30
bossbar add gametimer "Time left:"

## Note: Don't forget to change this value when testing an actual game
bossbar set gametimer color white
bossbar set gametimer max 1201


#> https://bugs.mojang.com/browse/MC-87984
#> pushOwnTeam and pushOtherTeams are swapped
team add Survivor
team add Monster
team add Lobby
team add Dev
team add Spectator
team modify Monster color dark_red
team modify Monster collisionRule pushOwnTeam
team modify Monster nametagVisibility hideForOtherTeams
team modify Monster friendlyFire false
team modify Survivor color aqua
team modify Survivor collisionRule pushOwnTeam
team modify Survivor nametagVisibility hideForOtherTeams
team modify Survivor friendlyFire true
team modify Lobby color gray
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility always
team modify Lobby collisionRule never
team modify Dev color gold
team modify Spectator color blue
team modify Spectator collisionRule never
team modify Spectator nametagVisibility always

gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule mobGriefing false
gamerule naturalRegeneration false