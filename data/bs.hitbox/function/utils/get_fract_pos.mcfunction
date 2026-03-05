data modify storage bs:ctx _ set from entity @s Pos
execute store result storage bs:ctx x int -1 run data get storage bs:ctx _[0]
execute store result storage bs:ctx y int -1 run data get storage bs:ctx _[1]
execute store result storage bs:ctx z int -1 run data get storage bs:ctx _[2]
function bs.hitbox:utils/get_relative_pos with storage bs:ctx
