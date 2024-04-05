# Statues.
A Minecraft minigame by V3RYM3GAFUN Studios

## Credits
- **V3RYM3GAFUN** - Creator, Producer, Coder, Builder, SFX Specialist
- **Java_chan** - Coder, Animator
- **RedstoneYay** - Coder
- **Evtema3** - Coder
- **TheAtlas29** - Builder
- **NoodlePandarian** - Builder
- **gosh5557** - Builder
- **Delkom** - Builder
- **Brownie1111** - Modeler/Graphic Designer


## Developer Player Tags
| Tag                               | Description                                                          |
|-----------------------------------|----------------------------------------------------------------------|
| `dev_always_show_floor_objective` | Shows the current objective and floor when you're not a survivor     |
| `dev_ignore_vent_requirement`     | Ignores the requirement to go in a vent (normally 002 and survivors) |

## Feature Flags
| Feature Flag  | Description                                                                                                              |
|---------------|--------------------------------------------------------------------------------------------------------------------------|
| `doors`       | Allows use of doors and all functions in `statues:ingame/mechanics/doors`                                                |
| `floors`      | Shows the current objective and floor to survivors, allows the use of all functions in `statues:ingame/mechanics/floors` |
| `lights`      | Allows creating and modifying lights and all functions in `statues:ingame/mechanics/lights`                              |
| `power_doors` | Allows opening/closing power doors, and access to all functions in `statues:ingame/mechanics/power_doors`                |
| `vents`       | Allows interacting with vents and all functions in `statues:ingame/mechanics/vents`                                      |


### Enabling/Disabling
To enable a feature flag run `/scoreboard players set <featureflag> Statues.FeatureFlags 1`, and to turn it off `/scoreboard players set <featureflag> Statues.FeatureFlags 0`. Replace `<featureflag>` with the feature you want to enable/disable.

## Entity tags 
| Tag                   | Description                                                                                   |
|-----------------------|-----------------------------------------------------------------------------------------------|
| `map_*`               | Marker inside barrels for item spawning (ex: facade_genkey)                                   |
| `objective_map_*`     | Interaction or text display or objective that can be completed (ex: objective_facade_genkey)  |
| `objective_power`     | Self explanotary. Might rename                                                                |
| `objective_reset`     | For all objectives that can be reset. (text displays, barrels, interactions)                  |
| `map_team_tp`         | Marker that will teleport the player from corresponding team to it (ex: facade_monster_tp)    |
| `map_monster_choice`  | Used to force a random monster selection if player doesn't choose after a certain time        |
| `map_survivor_classes`| Used to force a random class selection if player doesn't choose after a certain time          |
| `pressure_plates`     | Marker inside gold pressure plates (in class selection room)                                  |
| `queued`              | Used in lobby                                                                                 |
| `lobby_map_classes`   | In lobby, rooms where players look at classes                                                 | 
| `machine_*`           | Used by machines                                                                              |
