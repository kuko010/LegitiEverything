function bs.math:frexp/run
function bs.math:log2/fract with storage bs:ctx
scoreboard players operation #e bs.ctx *= 16777216 bs.const
execute store result storage bs:ctx x float 0.00000005960464477539062 run scoreboard players operation #x bs.ctx += #e bs.ctx
