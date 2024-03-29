tag @s add brawler
scoreboard players set @s Statues.Players 0

effect give @s health_boost infinite 2 true
effect give @s instant_health 5 10 true

item replace entity @s hotbar.0 with stick{Unbreakable:1b,"display":{Name:'[{"text":"Stun baton","italic":false}]'},Enchantments:[{id:"knockback",lvl:2},{id:"sharpness",lvl:1}]}

item replace entity @s hotbar.8 with compass