forceload add -30000000 1600
execute unless entity 000000b5-0000-0000-0000-000000000001 run summon minecraft:marker -30000000 0 1600 {UUID: [I; 181, 0, 0, 1], Tags: ["bs.entity", "bs.persistent", "smithed.entity", "smithed.strict"]}
scoreboard objectives add bs.ctx dummy [{text: "BS ", color: "dark_gray"}, {text: "Context", color: "aqua"}]
scoreboard objectives add bs.const dummy [{text: "BS ", color: "dark_gray"}, {text: "Constants", color: "aqua"}]
scoreboard objectives add bs.lambda dummy [{text: "BS ", color: "dark_gray"}, {text: "Lambda", color: "aqua"}]
scoreboard objectives add bs.data dummy [{text: "BS ", color: "dark_gray"}, {text: "Data", color: "aqua"}]
scoreboard objectives add bs.toi dummy [{text: "BS ", color: "dark_gray"}, {text: "Time of Impact", color: "aqua"}]
scoreboard players set -2 bs.const -2
scoreboard players set -1 bs.const -1
scoreboard players set 1 bs.const 1
scoreboard players set 2 bs.const 2
