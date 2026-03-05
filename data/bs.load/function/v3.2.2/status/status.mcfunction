execute unless score $bs.load.major load.status matches 3 run return 0
execute unless score $bs.load.minor load.status matches 2 run return 0
execute unless score $bs.load.patch load.status matches 2 run return 0
execute unless function #bs.load:process/validate run return fail
data modify storage bs:ctx _ set value []
data modify storage bs:ctx _ append from storage bs:data load.modules[{enabled: 1b}]
data modify storage bs:data load.status set value []
function bs.load:v3.2.2/status/module
tellraw @a [{text: "\n\u2714 ", color: "#4CCB5E", underlined: true}, {text: "BOOKSHELF", bold: true}, {text: " \u2022 Modules Loaded Successfully\n"}]
tellraw @a [{text: "\u25c7 Loaded Modules: ", color: "#F3B512"}, {text: "\n \u2022 ", color: "#CCCCCC"}, {type: "nbt", storage: "bs:data", nbt: "load.status[]", color: "#CCCCCC", separator: "\n \u2022 ", interpret: true}, "\n"]
return 1
