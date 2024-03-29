execute if entity @s[y_rotation=0] align xyz run summon block_display ~ ~ ~ {block_state:{Properties:{facing:"north",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=0] align xyz run summon block_display ~1 ~ ~ {block_state:{Properties:{facing:"north",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=0] align xyz run summon block_display ~ ~1 ~ {block_state:{Properties:{facing:"north",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=0] align xyz run summon block_display ~1 ~1 ~ {block_state:{Properties:{facing:"north",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}

execute if entity @s[y_rotation=90] align xyz run summon block_display ~ ~ ~ {block_state:{Properties:{facing:"east",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=90] align xyz run summon block_display ~ ~ ~1 {block_state:{Properties:{facing:"east",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=90] align xyz run summon block_display ~ ~1 ~ {block_state:{Properties:{facing:"east",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=90] align xyz run summon block_display ~ ~1 ~1 {block_state:{Properties:{facing:"east",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}

execute if entity @s[y_rotation=180] align xyz run summon block_display ~ ~ ~ {block_state:{Properties:{facing:"south",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=180] align xyz run summon block_display ~1 ~ ~ {block_state:{Properties:{facing:"south",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=180] align xyz run summon block_display ~ ~1 ~ {block_state:{Properties:{facing:"south",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=180] align xyz run summon block_display ~1 ~1 ~ {block_state:{Properties:{facing:"south",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}

execute if entity @s[y_rotation=270] align xyz run summon block_display ~ ~ ~ {block_state:{Properties:{facing:"west",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=270] align xyz run summon block_display ~ ~ ~1 {block_state:{Properties:{facing:"west",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=270] align xyz run summon block_display ~ ~1 ~ {block_state:{Properties:{facing:"west",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}
execute if entity @s[y_rotation=270] align xyz run summon block_display ~ ~1 ~1 {block_state:{Properties:{facing:"west",half:"bottom",open:"true",powered:"false",waterlogged:"false"},Name:"minecraft:iron_trapdoor"},Tags:["doord", "doord_init_close"]}

execute as @e[tag=doord_init_close] run data merge entity @s {transformation:{translation:[0f,-2f,0f]}}

playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 0.5 2