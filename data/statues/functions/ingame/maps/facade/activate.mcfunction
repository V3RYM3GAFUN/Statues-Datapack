#> List of tags for generating objective items:

#facade_genkey
execute at @e[tag=facade_genkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:1,display:{Name:'{"text":"Emergency Generator Key","italic": false}'}}

#facade_labkey
execute at @e[tag=facade_labkey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:2,display:{Name:'{"text":"Lab access keycard","italic": false}'}}

#facade_highclasskey
execute at @e[tag=facade_highclasskey,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with iron_ingot{CustomModelData:3,display:{Name:'{"text":"High class keycard","italic": false}'}}

#facade_book
execute at @e[tag=facade_book,sort=random,limit=1] run item replace block ~ ~ ~ container.13 with book{CustomModelData:4,display:{Name:'{"text":"CONFIDENTIAL","italic": false}'}}
