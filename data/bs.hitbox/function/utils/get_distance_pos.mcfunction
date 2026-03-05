$execute rotated 180 90 positioned ^$(x) ^$(z) ^$(y) run function bs.hitbox:utils/tp
data modify storage bs:ctx _ set from entity @s Pos
tp @s ~ -1000000 ~
kill @s
