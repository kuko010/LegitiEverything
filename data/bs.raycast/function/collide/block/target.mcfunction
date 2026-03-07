data remove storage bs:lambda hitbox
execute if score #raycast.bpiercing bs.data matches 0.. run scoreboard players remove #raycast.bpiercing bs.data 1
scoreboard players operation $raycast.piercing bs.lambda = #raycast.bpiercing bs.data
scoreboard players set $raycast.hit_flag bs.lambda 0
execute if data storage bs:data raycast.record[{flag: 1}] run scoreboard players add $raycast.hit_flag bs.lambda 1
execute if data storage bs:data raycast.record[{flag: 2}] run scoreboard players add $raycast.hit_flag bs.lambda 2
execute if data storage bs:data raycast.record[{flag: 4}] run scoreboard players add $raycast.hit_flag bs.lambda 4
execute if data storage bs:data raycast.record[{flag: 8}] run scoreboard players add $raycast.hit_flag bs.lambda 8
execute unless data storage bs:data raycast.on_hit_point run data remove storage bs:data raycast.record
execute if data storage bs:data raycast.on_targeted_block run function bs.raycast:utils/on_targeted_block with storage bs:data raycast
