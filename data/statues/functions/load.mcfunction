tellraw @a {"text":"Statues. Indev - v0.1a", "color": "#00AAAA"}

scoreboard objectives add Statues.Monsters dummy "Monsters"
scoreboard objectives add Statues.Survivors dummy "Survivors"
scoreboard objectives setdisplay sidebar.team.aqua Statues.Survivors
scoreboard objectives add Statues.Health health "Health"
scoreboard objectives add Statues.Heartbeat dummy
scoreboard objectives setdisplay below_name Statues.Health 
scoreboard objectives modify Statues.Health rendertype hearts
scoreboard objectives setdisplay sidebar.team.dark_red Statues.Monsters
scoreboard objectives add Statues.Dead deathCount
scoreboard objectives add Statues.StaticData dummy
scoreboard objectives add Statues.DynamicData dummy
scoreboard objectives add Statues.TempData dummy
scoreboard objectives add Statues.MapVote dummy
scoreboard objectives modify Statues.MapVote displayname "Map vote"
scoreboard objectives add Statues.Objective xp
scoreboard objectives add Player.Leave minecraft.custom:minecraft.leave_game
scoreboard players set $Status Statues.DynamicData 0
scoreboard objectives add Statues.Abilities minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Statues.Players dummy
scoreboard objectives add Statues.DoorData dummy
scoreboard objectives add Statues.TutorialObjective dummy

scoreboard players set $-9 Statues.StaticData -9
scoreboard players set $-1 Statues.StaticData -1
scoreboard players set $0 Statues.StaticData 0
scoreboard players set $2 Statues.StaticData 2
scoreboard players set $9 Statues.StaticData 9
scoreboard players set $10 Statues.StaticData 10
scoreboard players set $20 Statues.StaticData 20
scoreboard players set $45 Statues.StaticData 45
scoreboard players set $60 Statues.StaticData 60
scoreboard players set $90 Statues.StaticData 90
scoreboard players set $100 Statues.StaticData 100
scoreboard players set $111 Statues.StaticData 111

bossbar add countdown "Starting in..."
bossbar set countdown color yellow
bossbar set countdown max 30
bossbar add gametimer "Time left:"

## Note: Don't forget to change this value when testing an actual game
bossbar set gametimer color white
bossbar set gametimer max 601


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