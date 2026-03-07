data modify storage bs:ctx x set from storage bs:in math.sqrt.x
function bs.math:frexp/run
execute store result score #x bs.ctx store result score #y bs.ctx store result score #i bs.ctx store result score #j bs.ctx run data get storage bs:ctx x 1073741824
scoreboard players operation #x bs.ctx /= 79249 bs.const
scoreboard players add #x bs.ctx 19750
scoreboard players operation #i bs.ctx /= #x bs.ctx
scoreboard players operation #x bs.ctx += #i bs.ctx
scoreboard players operation #x bs.ctx /= 2 bs.const
scoreboard players operation #j bs.ctx /= #x bs.ctx
scoreboard players operation #x bs.ctx += #j bs.ctx
execute store result score #i bs.ctx store result score #j bs.ctx run scoreboard players operation #x bs.ctx /= 2 bs.const
scoreboard players operation #i bs.ctx *= 2 bs.const
scoreboard players add #i bs.ctx 1
scoreboard players operation #j bs.ctx *= #j bs.ctx
scoreboard players operation #y bs.ctx -= #j bs.ctx
scoreboard players operation #y bs.ctx *= 32768 bs.const
scoreboard players operation #y bs.ctx /= #i bs.ctx
scoreboard players operation #x bs.ctx *= 32768 bs.const
scoreboard players operation #t bs.ctx = #e bs.ctx
scoreboard players operation #t bs.ctx %= 2 bs.const
scoreboard players operation #e bs.ctx += #t bs.ctx
scoreboard players operation #e bs.ctx /= 2 bs.const
execute if score #t bs.ctx matches 0 store result storage bs:ctx x float 0.0000000009313225746154785 run scoreboard players operation #x bs.ctx += #y bs.ctx
execute if score #t bs.ctx matches 1 store result storage bs:ctx x float 0.0000000006585445079827193 run scoreboard players operation #x bs.ctx += #y bs.ctx
function bs.math:ldexp/run
data modify storage bs:out math.sqrt set from storage bs:ctx x
