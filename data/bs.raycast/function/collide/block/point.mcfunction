function bs.raycast:utils/tp_hit_point with storage bs:lambda raycast
execute positioned as @s run function bs.raycast:utils/on_hit_point with storage bs:data raycast
tp @s ~ ~ ~
