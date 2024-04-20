# "Statues."

A Minecraft minigame by V3RYM3GAFUN Studios

## Credits

- **V3RYM3GAFUN** - Creator, Producer (Programming, Building, Graphics Design, Sound Design)
- **Java_chan** - Programmer, Animator
- **RedstoneYay** - Programmer
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
| `dev_ignore_forced_gamemode`      | Ignores the correct gamemodes for teams                              |
| `dev_ignore_vent_requirement`     | Ignores the requirement to go in a vent (normally 002 and survivors) |

## Feature Flags

| Feature Flag               | Description                                                                                                                        |
|----------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| `abilities`                | Enables abilities of classes, and all the abilities functions (requires `map_tick`feature flag)                                    |
| `compass_tracker`          | Sets a compass for all players with the `has_compass_tracker` tag which points in the direction the nearest current tracker point  |
| `desk_button`              | Enables desk buttons. Also enables all functions in `statues:ingame/mechanics/desk_button`                                         |
| `dev_allow_debug_info`     | Turns off/on the `reducedDebugInfo` gamerule while in game                                                                         |
| `dev_auto_convert_lights`  | Automatically converts pink concrete into lights (requires `lights` feature flag)                                                  |
| `dev_no_start_requirement` | Sets the minimum player requirement in queuing to just one player (requires 2+ players for the game to not end instantly)          |
| `dev_show_interactions`    | Shows particles at interaction entities when nearby                                                                                |
| `dev_show_markers`         | Shows particles at marker entities when nearby                                                                                     |
| `doors`                    | Allows use of doors and the `doors_2x2` and `doors_3x3` feature flags                                                              |
| `doors_2x2`                | Allows use of 2x2 doors and all functions in `statues:ingame/mechanics/doors` (requires `doors` feature flag)                      |
| `doors_3x3`                | Allows use of 3x3 doors and all functions in `statues:ingame/mechanics/doors_3x3`  (requires `doors` feature flag)                 |
| `elevator`                 | Enables elevators and allows use of all functions in `statues:ingame/mechanics/elevator`                                           |
| `experimental_flashlight`  | Updates flashlight to use spyglass+night vision behavior instead and use functions from `statues:ingame/mechanics/flashlight/next` |
| `flashlight`               | Enables the flashlight item behavior and functions in `statues:ingame/mechanics/flashlight`                                        |
| `floors`                   | Shows the current objective and floor to survivors, allows the use of all functions in `statues:ingame/mechanics/floors`           |
| `hiding`                   | Enables ticking hiding spots                                                                                                       |
| `lights`                   | Allows creating and modifying lights and all functions in `statues:ingame/mechanics/lights`                                        |
| `map_tick`                 | Enables map ticking                                                                                                                |
| `power_doors`              | Allows opening/closing power doors, and access to all functions in `statues:ingame/mechanics/power_doors`                          |
| `sas`                      | Enables SAS machines and all functions in `statues:ingame/mechanics/sas`                                                           |
| `spectators_actionbar`     | Enables the tutorial and all functions in `statues:lobby/tutorial-info`                                                            |
| `tutorial`                 | Shows actionbar for spectators, and access to all functions in `statues:ingame/mechanics/spectators_actionbar`                     |
| `vents`                    | Allows interacting with vents and all functions in `statues:ingame/mechanics/vents`                                                |

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
