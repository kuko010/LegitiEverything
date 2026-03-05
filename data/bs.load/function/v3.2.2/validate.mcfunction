execute unless score $bs.load.major load.status matches 3 run return 0
execute unless score $bs.load.minor load.status matches 2 run return 0
execute unless score $bs.load.patch load.status matches 2 run return 0
execute unless data storage bs:data load.errors run return 1
forceload add -30000000 1600
setblock -30000000 1 1600 minecraft:air
setblock -30000000 0 1600 minecraft:test_block[mode=log]{mode: "log", message: "\u274c [Bookshelf] Failed to load some modules due to version conflicts. Run /reload in-game for details."}
setblock -30000000 1 1600 minecraft:redstone_block
tellraw @a [{text: "\n\u26a0 ", color: "#E84635", underlined: true}, {text: "BOOKSHELF", bold: true}, {text: " \u2022 Version Conflict Detected\n"}]
execute if data storage bs:data load.errors[{major: 1b}] run tellraw @a [{text: "\u25c7 Major Conflict: ", color: "#F3B512"}, {type: "nbt", storage: "bs:data", nbt: "load.errors[{major:1b}].message", color: "#CCCCCC", interpret: true}]
execute if data storage bs:data load.errors[{major: 0b}] run tellraw @a [{text: "\u25c7 Minor/Patch Conflict: ", color: "#F3B512"}, {type: "nbt", storage: "bs:data", nbt: "load.errors[{major:0b}].message", color: "#CCCCCC", interpret: true}]
execute unless data storage bs:data load.errors[{major: 1b}] run tellraw @a [{text: "\n\u2139 Download and place this ", color: "#43A8EC", italic: true}, {type: "nbt", storage: "bs:data", nbt: "load.bundle.message", color: "#26BD26", interpret: true}, " at the end of your datapack list.\n"]
execute if data storage bs:data load.errors[{major: 1b}] run tellraw @a [{text: "\n\u274c Cannot be resolved. Please use the same major version across all datapacks or use them at your own risk.\n", color: "#E84635", italic: true}]
return fail
