execute at @e[tag=tutorial_step1] run tp @s ~ ~ ~

tellraw @s  ["",{"text":"[Tutorial]","bold":true,"color":"aqua"},"\nWhen you're exploring, you might find yourself being chased by a monster. Luckily, you don't have to run away and hope to lose the monster! you can also try to hide under tables.\nClick on the ",{"text":"blue ","color":"dark_blue"},"concrete block to hide. Then click on the ",{"text":"red ","color":"dark_red"},"concrete block to get out\n"]

execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 1