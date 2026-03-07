data modify storage bs:ctx x set from storage bs:in math.frexp.x
function bs.math:frexp/run
execute store result storage bs:out math.frexp.e int 1 run scoreboard players get #e bs.ctx
data modify storage bs:out math.frexp.x set from storage bs:ctx x
