#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 3
tag @s add monster_chosen

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true

#> Stats specific to 003
effect give @s mining_fatigue infinite 5 true
effect give @s strength infinite 1 true 
effect give @s slowness infinite 0 true 

#> General armour and weapons
item replace entity @s armor.feet with netherite_boots{Unbreakable:1b}
item replace entity @s armor.legs with netherite_leggings{Unbreakable:1b}
item replace entity @s armor.chest with netherite_chestplate{Unbreakable:1b}

#> Armour and weapons specific to 003
item replace entity @s armor.head with player_head{SkullOwner: {Id: [I; 1493522995, 2138066012, -2144302948, -1975240326], Properties: {textures: [{Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwNzM0NDE2MjU5MCwKICAicHJvZmlsZUlkIiA6ICI1OTA1NWEzMzdmNzA0YzVjODAzMDg4OWM4YTQ0Mzk3YSIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYWZpamFzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2FkYzBjMGY2YjgzMzg3NzI5MWQwYTJjMjFjYzM1MTAxNGQ5MDk4OWM4NTJhZmY0NTNhYTI3ZDcyZWU0Njc2NSIKICAgIH0KICB9Cn0=", Signature: "l9M5Nhi3JVUVqm9mUMhVRK+OXV0LWqWkGvnMkbjmM5PMC2UWNoC+56xXFl4Avav+I0fm+SOxdYo6Atuvqx5IBH1W5HK2fQaOD70kMdJ8M5PBih/hVoYoSBFvJ3VnWGt3qLIulzppGR2J3S3pj6r2fK9sb9s6jOMmo+mb5ML4KmsbXXMbePmK2NATI4d6tcXSxKPpLGCFscAdmqz1gMFfNn8D2LtJIPJMrYnwPikGmS5RWus4R876hiqcxaSGzLVtHZIBo5l5yqRPUGoSPjJto0uRNVPprxgqGCHAnfNm1fEj6p1dFcB+6ddA6Ng5eZ/ijbJrl+MAo0vT24ueiaMtOgMXbz4QIFeQ/0f0IV8lNoYJyksLKrUv4fNGDttDp+QjyQNs1W0kPAsSdQJEljBaYktjHGC9TgAxMZyYZIOLGCTLWpceNxljfUfxO6IZcjHVrpZPaN7uj1l4RUNxo56GEb/qXhPTcsjazOS89aQ8SpoWNV5k+KXW3mcWVA1iOZhkGWHGR2KFqdcDt5OEPBsTuyrrpCygt0hh+rk7N5N98WDo3h8qYnWyz8bJkVeM6KFEGgkr5IavjoQXjx/kvwNf0tXSAyDTj4ynqkOxdnsmz4uW6Dm2pn5NPzVMQQi63+vDKoXhs0h5vLucnXqmLmR/cGDKIfUx6IyqUzYYhub3avM="}]}, Name: "003"}}
item replace entity @s weapon.mainhand with red_dye{CustomModelData:1,display:{Name:'[{"text":"Boxing glove","italic":false,"color":"red","bold":true}]'}} 1
item replace entity @s weapon.offhand with red_dye{CustomModelData:1,display:{Name:'[{"text":"Boxing glove","italic":false,"color":"red","bold":true}]'}} 1