execute if entity @s[tag=vent] run function statues:mechanics/vents/interaction
execute if entity @s[tag=objective_facade_genkey] run function statues:ingame/maps/facade/interactions/objective_genkey
execute if entity @s[tag=objective_facade_labkey] run function statues:ingame/maps/facade/interactions/objective_labkey
execute if entity @s[tag=objective_facade_highclasskey] run function statues:ingame/maps/facade/interactions/objective_highclasskey
execute if entity @s[tag=objective_facade_book] run function statues:ingame/maps/facade/interactions/objective_book
execute if entity @s[tag=facade_armory] run function statues:ingame/maps/facade/interactions/armory
execute if entity @s[tag=hide] run function statues:ingame/mechanics/survivors/interactions/hide
execute if entity @s[tag=exit] run function statues:ingame/mechanics/survivors/interactions/exit
execute if entity @s[tag=tutorial_hide] run function statues:lobby/tutorial-info/interactions/tutorial_hide
execute if entity @s[tag=tutorial_exit] run function statues:lobby/tutorial-info/interactions/tutorial_exit
execute if entity @s[tag=tutorial_button] run function statues:lobby/tutorial-info/interactions/tutorial_button
execute if entity @s[tag=tutorial_door] run function statues:lobby/tutorial-info/interactions/tutorial_door
execute if entity @s[tag=desk_button_interaction] run function statues:mechanics/desk_button/interaction_handler
execute if entity @s[tag=npc_receptionist] run function statues:lobby/interactions/receptionist
execute if entity @s[tag=click_test] run function statues:debug/called
execute if entity @s[tag=seat] run function statues:mechanics/seat/on_click