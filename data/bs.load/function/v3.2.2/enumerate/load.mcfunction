data modify storage bs:data load.modules append value {module: "bs.load", version: "3.2.2"}
scoreboard players add $bs.load.major load.status 0
scoreboard players add $bs.load.minor load.status 0
scoreboard players add $bs.load.patch load.status 0
execute unless score $bs.load.major load.status matches 3 run scoreboard players add #bs.load.major_versions load.status 1
execute unless score $bs.load.major load.status matches ..3 run return 0
execute if score $bs.load.major load.status matches 3 unless score $bs.load.minor load.status matches ..2 run return 0
execute if score $bs.load.major load.status matches 3 if score $bs.load.minor load.status matches 2 unless score $bs.load.patch load.status matches ..2 run return 0
scoreboard players set $bs.load.major load.status 3
scoreboard players set $bs.load.minor load.status 2
scoreboard players set $bs.load.patch load.status 2
