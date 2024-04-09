execute unless function statues:feature_flags/check_hiding_flags run return fail
execute align xyz positioned ~ ~-2.75 ~ run summon interaction ~0.5 ~ ~0.5 {Tags:["Hide"]}
execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 align xyz run summon interaction ~0.5 ~-2.03 ~0.5 {Tags:["Exit"],width:1.01f,height:1.01f}
