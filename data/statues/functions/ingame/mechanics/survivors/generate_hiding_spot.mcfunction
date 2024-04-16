execute unless function statues:feature_flags/check_hiding_flags run return fail
execute align xyz positioned ~.5 ~-.5 ~.5 run summon interaction ^ ^0.01 ^0.05 {Tags:["hide"],height:.5f}
execute align xyz positioned ~0.5 ~-2 ~0.5 align xyz run summon interaction ~0.5 ~ ~.5 {Tags:["exit"],width:1f,height:.5f}
