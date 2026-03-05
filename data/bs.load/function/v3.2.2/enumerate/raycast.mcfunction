data modify storage bs:data load.modules append value {module: "bs.raycast", version: "3.2.2", enabled: 0b}
scoreboard players add $bs.raycast.major load.status 0
scoreboard players add $bs.raycast.minor load.status 0
scoreboard players add $bs.raycast.patch load.status 0
execute unless score $bs.raycast.major load.status matches 3 run scoreboard players add #bs.raycast.major_versions load.status 1
execute unless score $bs.raycast.major load.status matches ..3 run return 0
execute if score $bs.raycast.major load.status matches 3 unless score $bs.raycast.minor load.status matches ..2 run return 0
execute if score $bs.raycast.major load.status matches 3 if score $bs.raycast.minor load.status matches 2 unless score $bs.raycast.patch load.status matches ..2 run return 0
scoreboard players set $bs.raycast.major load.status 3
scoreboard players set $bs.raycast.minor load.status 2
scoreboard players set $bs.raycast.patch load.status 2
