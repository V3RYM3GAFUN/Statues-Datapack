execute at @e[tag=tutorial_step2] run tp @s ~ ~ ~

tellraw @s  ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nWhile playing, you might notice that there are vents around the map. As a survivor, you can get in them for various reasons! Simply click on the top face of the ",{"text":"green","color":"green"},{"text":" concrete block to enter.","color":"white"},"\n"]

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
