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

map_* | marker inside barrels for item spawning (ex: facade_genkey)

objective_map_* | interaction or text display or objective that can be completed (ex: objective_facade_genkey)

objective_power | self explanotary. Might rename

objective_reset | for all objectives that can be reset. (text displays, barrels, interactions)

map_team_tp | marker that will teleport the player from corresponding team to it (ex: facade_monster_tp) 

pressure_plates | marker inside gold pressure plates (in class selection room)

queued | used in lobby

