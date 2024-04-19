const feature_flags = require("./feature_flags.json")
const fs = require("fs")
const path = require("path")
const baseDir = "./data/statues/functions/feature_flags"
fs.rmSync(baseDir, { recursive: true })
fs.mkdirSync(baseDir)

for(const [k, v] of Object.entries(feature_flags)) {
    fs.writeFileSync(path.resolve(baseDir, `check_${k.toLowerCase()}_flags.mcfunction`), 
`execute if score ${k} Statues.FeatureFlags matches 0 run tellraw @a {"color":"red","text":"Tried to use ${v.name} specific feature when the feature is disabled."}
execute if score ${k} Statues.FeatureFlags matches 0 run return fail
return 1`)
}

fs.writeFileSync(path.resolve(baseDir, "print_line.mcfunction"), 
`$execute if score $0 Statues.StaticData matches $(is_dev) run tellraw @s [{"text":"$(name) Feature: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"$(selector)"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]
$execute unless score $0 Statues.StaticData matches $(is_dev) run tellraw @s [{"text":"[Dev] ","color":"gold"},{"text":"$(name) Feature: ","color":"white"},{"score":{"objective":"Statues.FeatureFlags","name":"$(selector)"}},{"text":" [","color":"white"},{"text":"Enable","color":"green","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 1"}},{"text":"]","color":"white"},{"text":" [","color":"white"},{"text":"Disable","color":"red","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set $(selector) Statues.FeatureFlags 0"}},{"text":"]","color":"white"}]
`)

fs.writeFileSync(path.resolve(baseDir, "print.mcfunction"), 
`tellraw @s {"text":"---- Feature Flags ----","color":"gray"}
${Object.entries(feature_flags).map(([k, v]) => `function statues:feature_flags/print_line {is_dev: ${v.is_dev}, name: "${v.name}", selector: "${k}" }\n`).join("")}
tellraw @s {"text":"---- Feature Flags ----","color":"gray"}
`)

fs.writeFileSync(path.resolve(baseDir, "tick_scoreboard.mcfunction"),
`
${Object.entries(feature_flags).filter(e => e[1].depends.length).map(([k, v]) => 
`${v.depends.map(d => `execute if score ${d} Statues.FeatureFlags matches ..0 run scoreboard players set ${k} Statues.FeatureFlags -1`).join("\n")}
execute if score ${k} Statues.FeatureFlags matches -1 ${v.depends.map(d => `if score ${d} Statues.FeatureFlags matches 1..`).join(" ")} run scoreboard players set dev_auto_convert_lights Statues.FeatureFlags 0`
).join("\n")}

${Object.entries(feature_flags).map(([k, v]) => `
${v.depends.length != 0 ? `\nexecute if score ${k} Statues.FeatureFlags matches -1 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Disabled","color":"gray"}` : ""}
execute if score ${k} Statues.FeatureFlags matches 0 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Disabled","color":"red"}
execute unless score ${k} Statues.FeatureFlags matches ..0 run scoreboard players display numberformat ${k} Statues.FeatureFlags fixed {"text":"Enabled","color":"green"}
${!v.is_dev 
    ? `scoreboard players display name ${k} Statues.FeatureFlags {"text":"${v.name} Feature"}` 
    : `scoreboard players display name ${k} Statues.FeatureFlags [{"text":"[Dev] ","color":"gold"},{"text":"${v.name}","color":"white"}]`}`).join("")}
`)