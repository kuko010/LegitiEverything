execute store result score #e bs.ctx store result score #x bs.ctx run data get storage bs:in math.exp2.x 16777216
function bs.math:exp2/run
data modify storage bs:out math.exp2 set from storage bs:ctx x
