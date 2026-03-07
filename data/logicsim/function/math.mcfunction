execute store result score $value math run data get entity @s Health 10
scoreboard players operation $value math += $points math
execute store result score $i0 bolt.expr.temp run data get block ~ ~ ~ Items[0].Count 1
scoreboard players operation $value math += $i0 bolt.expr.temp
execute store result score $i1 bolt.expr.temp run data get storage example:storage discount 1
scoreboard players operation $value math -= $i1 bolt.expr.temp
data modify storage example:storage values append value 0
execute store result storage example:storage values[-1] int 1 run scoreboard players get $value math
say err
