$execute positioned ~$(x) ~$(y) ~$(z) run function bs.hitbox:utils/tp
data modify storage bs:ctx _ set from entity @s Pos
tp @s ~ -1000000 ~
kill @s
