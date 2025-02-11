const iterators = require("./iterators.json")
const fs = require("fs")
const path = require("path")

const baseDir = "data/statues/function/";

iterators.forEach(i => {

fs.writeFileSync(path.resolve(baseDir, `${i.entry_path}.mcfunction`), `execute unless function statues:feature_flags/check_${i.feature_flag}_flags run return fail
${(i.nbt_storage.includes("$(") || i.nbt_path.includes("$(")) ? "$" : ""}execute store result score $IterationsRemaining Statues.TempData run data get storage ${i.nbt_storage} ${i.nbt_path}
${Object.entries(i.write_scoreboard ?? []).map(x => `$scoreboard players set ${x[1]} Statues.TempData $(${x[0]})`).join("\n")}
${i.inputs.length !== 0 ? `$data modify storage statues:temp iter_exec set value {${i.inputs.map(x => `"${x}":"$(${x})"`).join(",")}}` : ""}
execute if score $IterationsRemaining Statues.TempData matches 1.. run ${i.inputs.length !== 0 ? `function statues:${i.iter_prefix}_iter with storage statues:temp iter_exec` : `function statues:${i.iter_prefix}_iter`}
`);

fs.writeFileSync(path.resolve(baseDir, `${i.iter_prefix}_iter.mcfunction`), `execute unless function statues:feature_flags/check_${i.feature_flag}_flags run return fail
execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData


${`execute store result storage statues:temp iter_exec.index int 1 run scoreboard players get $IterationsRemaining Statues.TempData
execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:${i.iter_prefix}_iter_exec with storage statues:temp iter_exec
execute unless score $IterationsRemaining Statues.TempData matches 1.. run return fail
scoreboard players remove $IterationsRemaining Statues.TempData 1
`.repeat(i.max_iter_per_exec)}

execute if score $IterationsRemaining Statues.TempData matches 1.. run function statues:${i.iter_prefix}_iter
`);

if(`statues:${i.iter_prefix}_iter_exec` !== i.execute) {
fs.writeFileSync(path.resolve(baseDir, `${i.iter_prefix}_iter_exec.mcfunction`), `execute unless function statues:feature_flags/check_${i.feature_flag}_flags run return fail
$data modify storage statues:temp iter_exec_per set from storage ${i.nbt_storage} ${i.nbt_path}[-$(index)]
${i.inputs.length !== 0 ? `$data merge storage statues:temp {iter_exec_per:{${i.inputs.map(x => `"${x}":"$(${x})"`).join(",")}}}` : ""}
function ${i.execute} with storage statues:temp iter_exec_per
`);
}

})