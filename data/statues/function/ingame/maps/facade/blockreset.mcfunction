#> Backup generator doors
setblock 2 100 -30 air replace
setblock 2 100 -30 crimson_door[facing=west,hinge=right] replace
setblock 2 101 -30 air replace
setblock 2 101 -30 crimson_door[facing=west,half=upper,hinge=right] replace

setblock 2 100 -29 air replace
setblock 2 100 -29 crimson_door[facing=west,hinge=left] replace
setblock 2 101 -29 air replace
setblock 2 101 -29 crimson_door[facing=west,half=upper,hinge=left] replace

setblock 7 100 -20 air replace
setblock 7 100 -20 crimson_door[facing=south,hinge=right] replace
setblock 7 101 -20 air replace
setblock 7 101 -20 crimson_door[facing=south,half=upper,hinge=right] replace

setblock 8 100 -20 air replace
setblock 8 100 -20 crimson_door[facing=south,hinge=left] replace
setblock 8 101 -20 air replace
setblock 8 101 -20 crimson_door[facing=south,half=upper,hinge=left] replace

#> Archive room doors
setblock 46 90 -18 air replace
setblock 46 90 -18 crimson_door[facing=south,hinge=left] replace
setblock 46 91 -18 air replace
setblock 46 91 -18 crimson_door[facing=south,half=upper,hinge=left] replace

setblock -46 90 -18 air replace
setblock -46 90 -18 crimson_door[facing=south,hinge=right] replace
setblock -46 91 -18 air replace
setblock -46 91 -18 crimson_door[facing=south,half=upper,hinge=right] replace

setblock -46 90 22 air replace
setblock -46 90 22 crimson_door[facing=north,hinge=left] replace
setblock -46 91 22 air replace
setblock -46 91 22 crimson_door[facing=north,half=upper,hinge=left] replace

setblock 46 90 22 air
setblock 46 90 22 crimson_door[facing=north,hinge=right]
setblock 46 91 22 air
setblock 46 91 22 crimson_door[facing=north,half=upper,hinge=right]

setblock 18 90 -24 air
setblock 18 90 -24 warped_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock 18 91 -24 air
setblock 18 91 -24 warped_door[facing=east,half=upper,hinge=left,open=false,powered=false]

setblock -17 90 -24 air
setblock -17 90 -24 warped_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -17 91 -24 air
setblock -17 91 -24 warped_door[facing=east,half=upper,hinge=left,open=false,powered=false]

#> Lab access room doors
setblock 4 78 52 air replace
setblock 4 78 52 crimson_door[facing=east,hinge=right] replace
setblock 4 79 52 air replace
setblock 4 79 52 crimson_door[facing=east,half=upper,hinge=right] replace

setblock -14 78 52 air replace
setblock -14 78 52 crimson_door[facing=west,hinge=right] replace
setblock -14 79 52 air replace
setblock -14 79 52 crimson_door[facing=west,half=upper,hinge=right] replace

#> Emergency override doors
setblock -8 78 45 air replace
setblock -8 78 45 crimson_door[facing=east,hinge=left] replace
setblock -8 79 45 air replace
setblock -8 79 45 crimson_door[facing=east,half=upper,hinge=left] replace

#> Emergency override vents
setblock 6 80 54 minecraft:warped_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
