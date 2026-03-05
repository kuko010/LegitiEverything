execute store result score #raycast.bpiercing bs.data store result score #raycast.epiercing bs.data run data get storage bs:data raycast.piercing 1
execute if score #raycast.bpiercing bs.data matches 0 store result score #raycast.bpiercing bs.data run data get storage bs:data raycast.piercing.blocks 1
execute if score #raycast.epiercing bs.data matches 0 store result score #raycast.epiercing bs.data run data get storage bs:data raycast.piercing.entities 1
scoreboard players add #raycast.bpiercing bs.data 1
scoreboard players add #raycast.epiercing bs.data 1
execute store result score #raycast.btoi bs.data store result score #raycast.etoi bs.data run scoreboard players set $raycast.distance bs.lambda 2147483647
execute store result score #i bs.ctx run scoreboard players set $raycast.pierce_distance bs.lambda 0
execute store result score #raycast.max_distance bs.data run data get storage bs:data raycast.max_distance 1000
data remove storage bs:out raycast
data remove storage bs:lambda raycast
execute unless data storage bs:data raycast{blocks: 0b} run scoreboard players add #i bs.ctx 2
execute unless data storage bs:data raycast{entities: 0b} run scoreboard players add #i bs.ctx 3
execute unless data storage bs:data raycast{entities: 0b} if entity @e[tag=bs.hitbox.custom, distance=..255, limit=1] run scoreboard players add #i bs.ctx 1
execute store result storage bs:ctx y int 1 run scoreboard players remove #i bs.ctx 1
execute positioned ^ ^ ^ summon minecraft:marker run function bs.raycast:recurse/init with storage bs:ctx
execute unless data storage bs:data raycast{entities: 0b} run scoreboard players reset @e[distance=..255, scores={bs.toi=0..}] bs.toi
data modify storage bs:out raycast set from storage bs:lambda raycast
execute if score $raycast.distance bs.lambda matches 2147483647 run return fail
return 1
