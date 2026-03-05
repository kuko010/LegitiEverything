function bs.raycast:utils/tp_hit_point with storage bs:lambda raycast
data modify storage bs:lambda raycast.hit_point set from entity @s Pos
tp @s ~ ~ ~
