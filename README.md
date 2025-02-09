# "Statues."

A Minecraft minigame by V3RYM3GAFUN Studios

## Credits

- **V3RYM3GAFUN** - Creator, Producer (Programming, Building, Graphics Design, Sound Design)
- **Java_chan** - Programmer, Animator
- **Yatloaf** - Programmer
- **Evtema3** - Programmer
- **TheAtlas29** - Builder
- **NoodlePandarian** - Builder
- **gosh5557** - Builder
- **Delkom** - Builder
- **Hydrintegral** - Builder
- **TheAI** - Builder
- **Creepanator77** - Builder
- **Brownie1111** - Modeler/Graphics Designer

## Developer Player Tags

| Tag                               | Description                                                          |
|-----------------------------------|----------------------------------------------------------------------|
| `dev_allow_item_drop`             | Allows player to drop items out of inventory                         |
| `dev_always_show_floor_objective` | Shows the current objective and floor when you're not a survivor     |
| `dev_always_show_nearby_players`  | Shows nearby survivors and monsters on the actionbar                 |
| `dev_always_update_dynamic_map`   | Always updates the dynamic map, even when not a survivor             |
| `dev_ignore_forced_gamemode`      | Ignores the correct gamemodes for teams                              |
| `dev_ignore_vent_requirement`     | Ignores the requirement to go in a vent (normally 002 and survivors) |
| `dev_not_monster`                 | Makes sure the game won't pick the player as the monster             |
| `dev_queue_allow`                 | Allows you to join a dev game in the queue area                      |
| `dev_see_game_events`             | Shows game events when in lobby team or spectator team               |

## Feature Flags

| Feature Flag                  | Description                                                                                                                        |
|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| `abilities`                   | Enables abilities of classes, and all the abilities functions                                                                      |
| `blood_trails`                | Enables survivor blood trails (best if activated/deactivated before the game starts, to make sure there are no leftover entities)  |
| `class_preview`               | Enables tutorial class preview and functions in `statues:mechanics/class_preview` (requires `abilities` and `tutorial` feature flags)  |
| `compass_tracker`             | Sets a compass for all players with the `has_compass_tracker` tag which points in the direction the nearest current tracker point  |
| `desk_button`                 | Enables desk buttons. Also enables all functions in `statues:mechanics/desk_button`                                                |
| `dev_allow_debug_info`        | Turns off/on the `reducedDebugInfo` gamerule while in game                                                                         |
| `dev_allow_empty_game`        | When turned on, the game won't end even if there are no monsters or survivors                                                      |
| `dev_auto_convert_lights`     | Automatically converts pink concrete into lights (requires `lights` feature flag)                                                  |
| `dev_infinite_game_time`      | Makes the game last for eternity until all monsters stop playing, or all survivors die                                             |
| `dev_no_game_reset_on_reload` | Disables the game resetting when the datapack gets loaded                                                                          |
| `dev_no_start_requirement`    | Sets the minimum player requirement in queuing to just one player (requires 2+ players for the game to not end instantly)          |
| `dev_override_dev_loot_pools` | Changes the dev game barrel locations to be dev specific, instead of being the default of a normal game                            |
| `dev_show_interactions`       | Shows particles at interaction entities when nearby                                                                                |
| `dev_show_markers`            | Shows block aligned particles at marker entities when nearby                                                                       |
| `dev_show_markers_accurate`   | Shows particles directly at marker entities when nearby                                                                            |
| `doors`                       | Allows use of doors and the `doors_1x2`,  `doors_2x2`, and `doors_3x3` feature flags                                               |
| `doors_1x2`                   | Allows use of 1x2 doors and all functions in `statues:mechanics/doors_1x2` (requires `doors` feature flag)                         |
| `doors_2x2`                   | Allows use of 2x2 doors and all functions in `statues:mechanics/doors_2x2` (requires `doors` feature flag)                         |
| `doors_3x3`                   | Allows use of 3x3 doors and all functions in `statues:mechanics/doors_3x3`  (requires `doors` feature flag)                        |
| `dynamic_map`                 | Enables dynamic maps in gameplay                                                                                                   |
| `elevator`                    | Allows use of elevators and the `elevator_2x3x2`,  `elevator_3x3x3`, `elevator_buttons`, and `elevator_freight` feature flags      |
| `elevator_2x3x2`              | Allows use of 2x3x2 elevators and all functions in `statues:mechanics/elevator_2x3x2` (requires `elevator` feature flag)           |
| `elevator_3x3x3`              | Allows use of 3x3x3 elevators and all functions in `statues:mechanics/elevator_3x3x3` (requires `elevator` feature flag)           |
| `elevator_buttons`            | Allows use of buttons of elevators and all functions in `statues:mechanics/elevator_buttons`  (requires `elevator` feature flag)   |
| `elevator_freight`            | Allows use of freight elevators and all functions in `statues:mechanics/elevator_freight`  (requires `elevator` feature flag)      |
| `experimental_flashlight`     | Updates flashlight to use spyglass+night vision behavior instead and use functions from `statues:mechanics/flashlight/next`        |
| `flashlight`                  | Enables the flashlight item behavior and functions in `statues:mechanics/flashlight`                                               |
| `floors`                      | Shows the current objective and floor to survivors, allows the use of all functions in `statues:mechanics/floors`                  |
| `hiding`                      | Enables ticking hiding spots                                                                                                       |
| `lights`                      | Allows creating and modifying lights and all functions in `statues:mechanics/lights`                                               |
| `map_tick`                    | Enables map ticking                                                                                                                |
| `power_doors`                 | Allows opening/closing power doors, and access to all functions in `statues:mechanics/power_doors`                                 |
| `receptionist`                | Enables the receptionist in the lobby                                                                                              |
| `queue`                       | Enables the queue system in the lobby                                                                                              |
| `sas`                         | Enables SAS machines and all functions in `statues:mechanics/sas`                                                                  |
| `spectators_actionbar`        | Enables the tutorial and all functions in `statues:lobby/tutorial-info`                                                            |
| `survivors_heart_sidebar`     | Enables showing hearts in the survivors scoreboard, shows `<>hp` when disabled instead                                             |
| `tutorial`                    | Shows actionbar for spectators, and access to all functions in `statues:mechanics/spectators_actionbar`                            |
| `vents`                       | Allows interacting with vents and all functions in `statues:mechanics/vents`                                                       |

### Enabling/Disabling

To enable a feature flag run `/scoreboard players set <featureflag> Statues.FeatureFlags 1`, and to turn it off `/scoreboard players set <featureflag> Statues.FeatureFlags 0`. Replace `<featureflag>` with the feature you want to enable/disable.

## Entity tags

| Tag                     | Description                                                                                   |
|-------------------------|-----------------------------------------------------------------------------------------------|
| `elevator_room`         | Any elevator room has this tag                                                                |
| `elevator_room_3x3x3`   | Elevator room which is 3x3x3, uses `minecraft:stick{CustomModelData:2}` for the model         |
| `lobby_map_classes`     | In lobby, rooms where players look at classes                                                 |
| `lobby_class_tutorial`  | Used for class previews. Allows players to test classes on a zombie.                          |
| `lobby_class_zombie`    | Spawns the test zombie for class testing.                                                     |
| `lobby_monster_tutorial`| Used for monster previews. Allows players to test monsters on a zombie.                       |
| `lobby_monster_zombie`  | Spawns the test zombie for class testing.                                                     |
| `machine_*`             | Used by machines                                                                              |
| `map_monster_choice`    | Used to force a random monster selection if player doesn't choose after a certain time        |
| `map_survivor_classes`  | Used to force a random class selection if player doesn't choose after a certain time          |
| `map_team_tp`           | Marker that will teleport the player from corresponding team to it (ex: facade_monster_tp)    |
| `map_*`                 | Marker inside barrels for item spawning (ex: facade_genkey)                                   |
| `objective_map_*`       | Interaction or text display or objective that can be completed (ex: objective_facade_genkey)  |
| `objective_power`       | Self explanotary. Might rename                                                                |
| `objective_reset`       | For all objectives that can be reset. (text displays, barrels, interactions)                  |
| `pressure_plates`       | Marker inside gold pressure plates (in class selection room)                                  |
| `queued`                | Used in lobby                                                                                 |
