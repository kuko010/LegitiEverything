data modify storage bs:ctx x set from storage bs:in math.ldexp.x
execute store result score #e bs.ctx run data get storage bs:in math.ldexp.e
function bs.math:ldexp/run
data modify storage bs:out math.ldexp set from storage bs:ctx x
