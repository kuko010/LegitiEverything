data modify storage bs:data load.modules append value {module: "bs.hitbox", version: "3.2.2", enabled: 0b}
scoreboard players add $bs.hitbox.major load.status 0
scoreboard players add $bs.hitbox.minor load.status 0
scoreboard players add $bs.hitbox.patch load.status 0
execute unless score $bs.hitbox.major load.status matches 3 run scoreboard players add #bs.hitbox.major_versions load.status 1
execute unless score $bs.hitbox.major load.status matches ..3 run return 0
execute if score $bs.hitbox.major load.status matches 3 unless score $bs.hitbox.minor load.status matches ..2 run return 0
execute if score $bs.hitbox.major load.status matches 3 if score $bs.hitbox.minor load.status matches 2 unless score $bs.hitbox.patch load.status matches ..2 run return 0
scoreboard players set $bs.hitbox.major load.status 3
scoreboard players set $bs.hitbox.minor load.status 2
scoreboard players set $bs.hitbox.patch load.status 2
