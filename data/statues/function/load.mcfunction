tellraw @a {"text":"Statues. Indev Preview", "color": "#00AAAA"}

scoreboard objectives add Statues.Monsters dummy "Monsters"
scoreboard objectives setdisplay sidebar.team.dark_red Statues.Monsters
scoreboard objectives add Statues.Survivors dummy "Survivors"
scoreboard objectives setdisplay sidebar.team.aqua Statues.Survivors
scoreboard objectives add Statues.Health health "Health"
scoreboard objectives setdisplay below_name Statues.Health
scoreboard objectives modify Statues.Health rendertype hearts
scoreboard objectives add Statues.Heartbeat dummy
scoreboard objectives add Statues.Dead deathCount
scoreboard objectives add Statues.Constants dummy
scoreboard objectives add Statues.DynamicData dummy
scoreboard objectives add Statues.TempData dummy
scoreboard objectives add Statues.MapVote dummy
scoreboard objectives add Statues.SurvivorTrail dummy
scoreboard objectives modify Statues.MapVote displayname {"text":"Map Vote","color":"aqua","underlined":true}
scoreboard players display name facade Statues.MapVote {"text":"Façade","color":"#D2B4A2"}
scoreboard players display name lockdown Statues.MapVote {"text":"Lockdown","color":"#AEAEAE"}
scoreboard players display name origins Statues.MapVote {"text":"Origins","color":"#24737F"}
scoreboard objectives add Player.Leave minecraft.custom:minecraft.leave_game
scoreboard objectives add Statues.Abilities minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Statues.Players dummy
scoreboard objectives add Statues.DoorData dummy
scoreboard objectives add Statues.TutorialObjective dummy
scoreboard objectives add Statues.Flashlight minecraft.used:spyglass
scoreboard objectives add Statues.Barrels minecraft.custom:open_barrel
scoreboard objectives add Statues.ActionTrigger trigger
scoreboard objectives add Statues.Drop minecraft.custom:minecraft.drop
scoreboard objectives add Statues.GameStatistics dummy
scoreboard objectives add Statues.DamageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add Statues.Advancements.IngameNoDamage dummy
scoreboard objectives add Statues.PrevHealth dummy
scoreboard objectives add Statues.FeatureFlags dummy
scoreboard objectives add Statues.ReplayData dummy
scoreboard objectives add Statues.Raycast dummy
scoreboard objectives add Statues.AmmoSelect custom:drop
scoreboard objectives add Statues.Chase dummy

scoreboard objectives add Statues.SongSelect dummy
scoreboard objectives add Statues.SongTimer dummy
scoreboard objectives add skip_song trigger "Skip Song"
scoreboard objectives add previous_song trigger "Previous Song"

function statues:game_events/init

scoreboard players set $-9 Statues.Constants -9
scoreboard players set $-1 Statues.Constants -1
scoreboard players set $0 Statues.Constants 0
scoreboard players set $1 Statues.Constants 1
scoreboard players set $2 Statues.Constants 2
scoreboard players set $9 Statues.Constants 9
scoreboard players set $10 Statues.Constants 10
scoreboard players set $11 Statues.Constants 11
scoreboard players set $20 Statues.Constants 20
scoreboard players set $40 Statues.Constants 40
scoreboard players set $45 Statues.Constants 45
scoreboard players set $60 Statues.Constants 60
scoreboard players set $90 Statues.Constants 90
scoreboard players set $96 Statues.Constants 96
scoreboard players set $100 Statues.Constants 100
scoreboard players set $111 Statues.Constants 111
scoreboard players set $625 Statues.Constants 625
scoreboard players set $1000 Statues.Constants 1000
scoreboard players set $8841 Statues.Constants 8841
scoreboard players set $10000 Statues.Constants 10000
scoreboard players set $100000 Statues.Constants 100000

bossbar add statues:countdown "Starting in: 30s"
bossbar set statues:countdown color yellow
bossbar set statues:countdown max 30
bossbar add statues:gametimer "Time left:"
## Note: Don't forget to change this value when testing an actual game
bossbar set statues:gametimer color white
bossbar set statues:gametimer max 601
bossbar add statues:warptimer "Warp in: 90s"
bossbar set statues:warptimer color green
bossbar set statues:warptimer max 1800

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
team modify Survivor friendlyFire false
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

function #statues:game_events/server/load

execute if score dev_no_game_reset_on_reload Statues.FeatureFlags matches ..0 unless score $Status Statues.DynamicData matches 0 run function statues:reset
