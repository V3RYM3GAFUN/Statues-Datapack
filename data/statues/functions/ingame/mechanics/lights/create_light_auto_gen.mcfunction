execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete if block ~-1 ~ ~-1 pink_concrete run summon block_display ~-0.5 ~0.8 ~-0.5 {Tags:["tlampc","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete if block ~-1 ~ ~-1 pink_concrete run fill ~ ~ ~ ~-1 ~ ~-1 air
execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete if block ~ ~ ~1 pink_concrete if block ~-1 ~ ~1 pink_concrete run summon block_display ~-0.5 ~0.8 ~0.5 {Tags:["tlampc","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete if block ~ ~ ~1 pink_concrete if block ~-1 ~ ~1 pink_concrete run fill ~ ~ ~ ~-1 ~ ~1 air
execute align xyz if block ~ ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete if block ~1 ~ ~-1 pink_concrete run summon block_display ~0.5 ~0.8 ~-0.5 {Tags:["tlampc","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete if block ~1 ~ ~-1 pink_concrete run fill ~ ~ ~ ~1 ~ ~-1 air
execute align xyz if block ~ ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete if block ~ ~ ~1 pink_concrete if block ~1 ~ ~1 pink_concrete run summon block_display ~0.5 ~0.8 ~0.5 {Tags:["tlampc","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete if block ~ ~ ~1 pink_concrete if block ~1 ~ ~1 pink_concrete run fill ~ ~ ~ ~1 ~ ~1 air



execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run summon minecraft:block_display ~-0.5 ~0.8 ~ {Tags:["tlampcx","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete if block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run fill ~ ~ ~ ~-1 ~ ~ air

execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run summon minecraft:block_display ~0.5 ~0.8 ~ {Tags:["tlampcx","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete if block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run fill ~ ~ ~ ~1 ~ ~ air


execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run summon minecraft:block_display ~ ~0.8 ~-0.5 {Tags:["tlampcz","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete if block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run fill ~ ~ ~ ~ ~ ~-1 air

execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete if block ~ ~ ~1 pink_concrete run summon minecraft:block_display ~ ~0.8 ~0.5 {Tags:["tlampcz","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete if block ~ ~ ~1 pink_concrete run fill ~ ~ ~ ~ ~ ~1 air


execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run summon minecraft:block_display ~ ~-0.2 ~ {Tags:["tlamp","game_lamp"],block_state:{Name:"minecraft:redstone_lamp",Properties:{lit:"true"}}}
execute align xyz if block ~ ~ ~ pink_concrete unless block ~-1 ~ ~ pink_concrete unless block ~1 ~ ~ pink_concrete unless block ~ ~ ~-1 pink_concrete unless block ~ ~ ~1 pink_concrete run setblock ~ ~ ~ air
