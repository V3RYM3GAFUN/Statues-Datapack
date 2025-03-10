#> Tells the monster team which one the player chose
scoreboard players set @s Statues.Monsters 3
scoreboard players display numberformat @s Statues.Monsters fixed {"translate":"statues.score.003","color": "red"}
tag @s add monster_chosen
tag @s add can_use_vent

#> Stats for each monster
effect give @s night_vision infinite 0 true
effect give @s regeneration infinite 100 true
effect give @s resistance infinite 100 true
effect give @s saturation infinite 100 true
attribute @s knockback_resistance modifier add statues:no_knockback 1 add_value
attribute @s jump_strength base set 0
attribute @s fall_damage_multiplier base set 0
attribute @s step_height modifier add statues:step 0.75 add_value

#> Stats specific to 003
attribute @s movement_speed modifier add statues:super_quick 0.03 add_value
effect give @s mining_fatigue infinite 5 true
attribute @s attack_damage modifier add statues:damage 1 add_value
attribute @s scale base set 1.111

#> General armour
item replace entity @s armor.feet with netherite_boots[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]
item replace entity @s armor.legs with netherite_leggings[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1,swift_sneak:1}},enchantment_glint_override=0b]
item replace entity @s armor.chest with netherite_chestplate[unbreakable={show_in_tooltip:0b},item_name='{"translate": "statues.item.statue.armor","italic": false,"bold": true,"color": "white"}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.8 loot statues:items/dynamic_map_survivor

#> Items specific to 003
item replace entity @s armor.head with player_head[profile={id:[I;1493522995,2138066012,-2144302948,-1975240326],properties:[{name:"textures",value:"ewogICJ0aW1lc3RhbXAiIDogMTYwNzM0NDE2MjU5MCwKICAicHJvZmlsZUlkIiA6ICI1OTA1NWEzMzdmNzA0YzVjODAzMDg4OWM4YTQ0Mzk3YSIsCiAgInByb2ZpbGVOYW1lIiA6ICJNYWZpamFzIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2FkYzBjMGY2YjgzMzg3NzI5MWQwYTJjMjFjYzM1MTAxNGQ5MDk4OWM4NTJhZmY0NTNhYTI3ZDcyZWU0Njc2NSIKICAgIH0KICB9Cn0=",signature:"l9M5Nhi3JVUVqm9mUMhVRK+OXV0LWqWkGvnMkbjmM5PMC2UWNoC+56xXFl4Avav+I0fm+SOxdYo6Atuvqx5IBH1W5HK2fQaOD70kMdJ8M5PBih/hVoYoSBFvJ3VnWGt3qLIulzppGR2J3S3pj6r2fK9sb9s6jOMmo+mb5ML4KmsbXXMbePmK2NATI4d6tcXSxKPpLGCFscAdmqz1gMFfNn8D2LtJIPJMrYnwPikGmS5RWus4R876hiqcxaSGzLVtHZIBo5l5yqRPUGoSPjJto0uRNVPprxgqGCHAnfNm1fEj6p1dFcB+6ddA6Ng5eZ/ijbJrl+MAo0vT24ueiaMtOgMXbz4QIFeQ/0f0IV8lNoYJyksLKrUv4fNGDttDp+QjyQNs1W0kPAsSdQJEljBaYktjHGC9TgAxMZyYZIOLGCTLWpceNxljfUfxO6IZcjHVrpZPaN7uj1l4RUNxo56GEb/qXhPTcsjazOS89aQ8SpoWNV5k+KXW3mcWVA1iOZhkGWHGR2KFqdcDt5OEPBsTuyrrpCygt0hh+rk7N5N98WDo3h8qYnWyz8bJkVeM6KFEGgkr5IavjoQXjx/kvwNf0tXSAyDTj4ynqkOxdnsmz4uW6Dm2pn5NPzVMQQi63+vDKoXhs0h5vLucnXqmLmR/cGDKIfUx6IyqUzYYhub3avM="}]},item_name='{"translate": "statues.item.003.head","color": "red","bold": true,"italic": false}',enchantments={show_in_tooltip:false,levels:{binding_curse:1}},enchantment_glint_override=0b]

loot replace entity @s hotbar.0 loot statues:items/monsters/003
loot replace entity @s weapon.offhand loot statues:items/monsters/003

loot replace entity @s hotbar.4 loot statues:items/monsters/abilities/003

execute if entity @s[tag=!monster_tutorial] run scoreboard players operation $MonsterKind Statues.GameEventData = $MonsterKind.003 Statues.GameEventEnum
execute if entity @s[tag=!monster_tutorial] run function #statues:game_events/ingame/pick_monster