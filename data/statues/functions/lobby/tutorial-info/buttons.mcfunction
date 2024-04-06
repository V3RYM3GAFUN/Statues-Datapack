execute at @e[tag=tutorial_step3] run tp @s ~ ~ ~

tellraw @s ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nSome of the objectives to complete are represented by ",{"text":"crimson","color":"red"},{"text":" buttons. When you press the button, it'll become a ","color":"white"},{"text":"warped","color":"dark_aqua"},{"text":" button, signaling that this objective has been accomplished","color":"white"}]

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1
