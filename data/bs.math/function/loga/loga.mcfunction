data modify storage bs:ctx x set from storage bs:in math.loga.a
function bs.math:log2/run
scoreboard players set #a bs.ctx 2000000000
execute store result score #b bs.ctx run data get storage bs:ctx x 20000
execute store result storage bs:ctx y double 1 run scoreboard players operation #a bs.ctx /= #b bs.ctx
data modify storage bs:ctx x set from storage bs:in math.loga.x
function bs.math:log2/run
function bs.math:loga/mul with storage bs:ctx
