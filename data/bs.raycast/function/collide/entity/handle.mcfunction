function bs.raycast:utils/tp_hit_point with storage bs:lambda raycast
execute if data storage bs:data raycast.data{hit_point: 1b} run data modify storage bs:lambda raycast.hit_point set from entity @s Pos
execute positioned as @s as @n[predicate=bs.raycast:internal/collide, distance=..24, sort=arbitrary] run function bs.raycast:collide/entity/target
tp @s ~ ~ ~
scoreboard players operation #raycast.epiercing bs.data = $raycast.piercing bs.lambda
execute unless data storage bs:data raycast.piercing{} run scoreboard players operation #raycast.bpiercing bs.data = #raycast.epiercing bs.data
