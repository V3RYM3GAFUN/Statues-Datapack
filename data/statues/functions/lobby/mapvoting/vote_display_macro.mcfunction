$execute if score $1 Statues.StaticData matches $(votes) run scoreboard players display numberformat $(map_name) Statues.MapVote fixed [{"text":"$(votes)","color":"white"}, {"text":" vote","color":"gray"}]
$execute unless score $1 Statues.StaticData matches $(votes) run scoreboard players display numberformat $(map_name) Statues.MapVote fixed [{"text":"$(votes)","color":"white"}, {"text":" votes","color":"gray"}]