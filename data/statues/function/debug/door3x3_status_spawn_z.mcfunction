execute align xyz run summon minecraft:item_display ~0.5 ~3.5 ~0.5 {Tags:["door3x3_status"],item:{id:"minecraft:yellow_concrete",Count:1b},brightness:{sky:0,block:15}}
data merge entity @e[tag=door3x3_status,sort=nearest,limit=1] {transformation:{scale:[0.5f,0.5f,1.5f]}}
