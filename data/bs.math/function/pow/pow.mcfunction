data modify storage bs:ctx x set from storage bs:in math.pow.x
data modify storage bs:ctx y set from storage bs:in math.pow.y
function bs.math:frexp/run
function bs.math:log2/fract with storage bs:ctx
scoreboard players operation #e bs.ctx *= 16777216 bs.const
function bs.math:pow/mul with storage bs:ctx
execute store result score #e bs.ctx store result score #x bs.ctx run data get storage bs:ctx x
function bs.math:exp2/run
data modify storage bs:out math.pow set from storage bs:ctx x
