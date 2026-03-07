$execute positioned ~$(x) ~$(y) ~$(z) run function bs.raycast:utils/tp
data modify storage bs:ctx _ set from entity @s Pos
tp @s -30000000 0 1600
