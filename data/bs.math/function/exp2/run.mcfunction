scoreboard players operation #e bs.ctx /= 16777216 bs.const
execute store result storage bs:ctx x float 0.00000005960464477539062 run scoreboard players operation #x bs.ctx %= 16777216 bs.const
execute unless score #x bs.ctx matches 0 run function bs.math:exp2/fract with storage bs:ctx
execute if score #x bs.ctx matches 0 run data modify storage bs:ctx x set value 1.0d
function bs.math:ldexp/run with storage bs:ctx
