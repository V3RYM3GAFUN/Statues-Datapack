#> Backup generator doors
setblock 3 127 300 air replace
setblock 3 127 300 crimson_door[facing=west,hinge=right] replace
setblock 3 128 300 air replace
setblock 3 128 300 crimson_door[facing=west,half=upper,hinge=right] replace

setblock 3 127 301 air replace
setblock 3 127 301 crimson_door[facing=west,hinge=left] replace
setblock 3 128 301 air replace
setblock 3 128 301 crimson_door[facing=west,half=upper,hinge=left] replace

setblock 8 127 310 air replace
setblock 8 127 310 crimson_door[facing=south,hinge=right] replace
setblock 8 128 310 air replace
setblock 8 128 310 crimson_door[facing=south,half=upper,hinge=right] replace

setblock 9 127 310 air replace
setblock 9 127 310 crimson_door[facing=south,hinge=left] replace
setblock 9 128 310 air replace
setblock 9 128 310 crimson_door[facing=south,half=upper,hinge=left] replace

#> Archive room doors
setblock 47 117 312 air replace
setblock 47 117 312 crimson_door[facing=south,hinge=left] replace
setblock 47 118 312 air replace
setblock 47 118 312 crimson_door[facing=south,half=upper,hinge=left] replace

setblock -45 117 312 air replace
setblock -45 117 312 crimson_door[facing=south,hinge=right] replace
setblock -45 118 312 air replace
setblock -45 118 312 crimson_door[facing=south,half=upper,hinge=right] replace

setblock -45 117 352 air replace
setblock -45 117 352 crimson_door[facing=north,hinge=left] replace
setblock -45 118 352 air replace
setblock -45 118 352 crimson_door[facing=north,half=upper,hinge=left] replace

setblock 47 117 352 air
setblock 47 117 352 crimson_door[facing=north,hinge=right]
setblock 47 118 352 air
setblock 47 118 352 crimson_door[facing=north,half=upper,hinge=right]

setblock 19 117 306 air
setblock 19 117 306 warped_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock 19 118 306 air
setblock 19 118 306 warped_door[facing=east,half=upper,hinge=left,open=false,powered=false]

setblock -16 117 306 air
setblock -16 117 306 warped_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock -16 118 306 air
setblock -16 118 306 warped_door[facing=east,half=upper,hinge=left,open=false,powered=false]

#> Lab access room doors
setblock 5 105 382 air replace
setblock 5 105 382 crimson_door[facing=east,hinge=right] replace
setblock 5 106 382 air replace
setblock 5 106 382 crimson_door[facing=east,half=upper,hinge=right] replace

setblock -13 105 382 air replace
setblock -13 105 382 crimson_door[facing=west,hinge=right] replace
setblock -13 106 382 air replace
setblock -13 106 382 crimson_door[facing=west,half=upper,hinge=right] replace

#> Emergency override doors
setblock -7 105 375 air replace
setblock -7 105 375 crimson_door[facing=east,hinge=left] replace
setblock -7 106 375 air replace
setblock -7 106 375 crimson_door[facing=east,half=upper,hinge=left] replace

#> Emergency override vents
setblock 7 107 384 minecraft:warped_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
