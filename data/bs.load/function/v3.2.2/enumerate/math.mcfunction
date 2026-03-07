data modify storage bs:data load.modules append value {module: "bs.math", version: "3.2.2", enabled: 0b}
scoreboard players add $bs.math.major load.status 0
scoreboard players add $bs.math.minor load.status 0
scoreboard players add $bs.math.patch load.status 0
execute unless score $bs.math.major load.status matches 3 run scoreboard players add #bs.math.major_versions load.status 1
execute unless score $bs.math.major load.status matches ..3 run return 0
execute if score $bs.math.major load.status matches 3 unless score $bs.math.minor load.status matches ..2 run return 0
execute if score $bs.math.major load.status matches 3 if score $bs.math.minor load.status matches 2 unless score $bs.math.patch load.status matches ..2 run return 0
scoreboard players set $bs.math.major load.status 3
scoreboard players set $bs.math.minor load.status 2
scoreboard players set $bs.math.patch load.status 2
