const feature_flags = require("./feature_flags.json")
const fs = require("fs")
const path = require("path")
const baseDir = "./data/statues/function/feature_flags"
fs.rmSync(baseDir, { recursive: true })
fs.mkdirSync(baseDir)

for(const [k, v] of Object.entries(feature_flags)) {
    fs.writeFileSync(path.resolve(baseDir, `check_${k.toLowerCase()}_flags.mcfunction`), 
`execute if score ${k} Statues.FeatureFlags matches 1.. run return 1
tellraw @a[tag=dev_see_feature_flag_failed_uses] {"color":"red","text":"Tried to use ${v.name} specific feature when the feature is disabled. @s=","extra":[{"selector":"@s"}]}
return fail`)
}

for(const [k, v] of Object.entries(feature_flags)) {
    fs.writeFileSync(path.resolve(baseDir, `set_${k.toLowerCase()}.mcfunction`), 
`$scoreboard players set ${k} Statues.FeatureFlags $(value)
function statues:feature_flags/tick_scoreboard
${
    !v.is_dev
      ? !v.is_experimental
          ? `tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"${v.name} Feature"},{"text":" to "},{"score":{"name":"${k}","objective":"Statues.FeatureFlags"}}]`
          : `tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"[Experimental] ","color":"#9542f5"},{"text":"${v.name}","color":"white"},{"text":" to "},{"score":{"name":"${k}","objective":"Statues.FeatureFlags"}}]`
      : `tellraw @a[tag=dev_see_feature_flag_changes] [{"text":"Updated "},{"text":"[Dev] ","color":"gold"},{"text":"${v.name}","color":"white"},{"text":" to "},{"score":{"name":"${k}","objective":"Statues.FeatureFlags"}}]`
}
`)
}

fs.writeFileSync(path.resolve(baseDir, "_print.mcfunction"), 
`tellraw @s {"text":"---- Feature Flags ----","color":"gray"}
${Object.entries(feature_flags).map(([k, v]) => 
    !v.is_dev 
      ? !v.is_experimental 
          ? `tellraw @s [{"text":"${v.name} Feature: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"${k}"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]\n`
          : `tellraw @s [{"text":"[Experimental] ","color":"#9542f5"},{"text":"${v.name}: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"${k}"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]\n`
    : `tellraw @s [{"text":"[Dev] ","color":"gold"},{"text":"${v.name}: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"${k}"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set ${k} Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]\n`
).join("")}
tellraw @s {"text":"---- Feature Flags ----","color":"gray"}
`)

fs.writeFileSync(path.resolve(baseDir, "tick_scoreboard.mcfunction"),
`
${Object.entries(feature_flags).filter(e => e[1].depends.length).map(([k, v]) => 
`${v.depends.map(d => `execute if score ${d} Statues.FeatureFlags matches ..0 run scoreboard players set ${k} Statues.FeatureFlags -1`).join("\n")}
execute if score ${k} Statues.FeatureFlags matches -1 ${v.depends.map(d => `if score ${d} Statues.FeatureFlags matches 1..`).join(" ")} run scoreboard players set ${k} Statues.FeatureFlags 0`
).join("\n")}

${Object.entries(feature_flags).map(([k, v]) => `
${v.depends.length != 0 ? `\nexecute if score ${k} Statues.FeatureFlags matches -1 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}` : ""}
execute if score ${k} Statues.FeatureFlags matches 0 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score ${k} Statues.FeatureFlags matches ..0 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
${!v.is_dev 
    ? !v.is_experimental 
        ? `scoreboard players display name ${k} Statues.FeatureFlags {"text":"${v.name} Feature"}` 
        : `scoreboard players display name ${k} Statues.FeatureFlags [{"text":"[Experimental] ","color":"#9542f5"},{"text":"${v.name}","color":"white"}]`
    : `scoreboard players display name ${k} Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"${v.name}","color":"white"}]`}`).join("")}
`)

fs.writeFileSync(path.resolve(baseDir, "switch_disable_non_dev.mcfunction"), Object.entries(feature_flags).filter(([_, v]) => !v.is_dev).map(([k, v]) => `execute if score ${k} Statues.FeatureFlags matches 1.. run function statues:feature_flags/set_${k} {value:0}`).join("\n"))
fs.writeFileSync(path.resolve(baseDir, "switch_enable_non_dev.mcfunction"), Object.entries(feature_flags).filter(([_, v]) => !v.is_dev).map(([k, v]) => `execute if score ${k} Statues.FeatureFlags matches ..0 run function statues:feature_flags/set_${k} {value:1}`).join("\n"))
fs.writeFileSync(path.resolve(baseDir, "switch_default_non_dev.mcfunction"), Object.entries(feature_flags).filter(([_, v]) => !v.is_dev).map(([k, v]) => `execute if score ${k} Statues.FeatureFlags matches ${v.default ? "..0" : "1.."} run function statues:feature_flags/set_${k} {value:${v.default ? "1" : "0"}}`).join("\n"))
