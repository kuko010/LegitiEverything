execute unless score $bs.hitbox.major load.status matches 3 run return 0
execute unless score $bs.hitbox.minor load.status matches 2 run return 0
execute unless score $bs.hitbox.patch load.status matches 2 run return 0
data modify storage bs:data load.errors append value {major: 1b, message: {text: "[bs.hitbox]", hover_event: {action: "show_text", value: [{text: "[v", color: "#CCCCCC"}, {type: "nbt", storage: "bs:data", nbt: "load.modules[{module:'bs.hitbox',enabled:1b}].version"}, {text: " ("}, {text: "\u2714 enabled", color: "#26BD26"}, {text: "), v"}, {type: "nbt", storage: "bs:data", nbt: "load.modules[{module:'bs.hitbox',enabled:0b}].version", separator: ", v"}, {text: "]"}]}}}
execute if score #bs.hitbox.major_versions load.status matches 2.. run return 0
data modify storage bs:data load.errors[-1].major set value 0b
function bs.load:v3.2.2/bundle/append {module: "bs.hitbox"}
