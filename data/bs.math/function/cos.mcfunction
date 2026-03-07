scoreboard players operation $math.cos bs.out = $math.cos.x bs.in
execute store result score #x bs.ctx run scoreboard players operation $math.cos bs.out %= 36000 bs.const
execute if score #x bs.ctx matches 9000..27000 run scoreboard players remove $math.cos bs.out 18000
execute if score #x bs.ctx matches 27001.. run scoreboard players remove $math.cos bs.out 36000
execute store result score #y bs.ctx run scoreboard players operation $math.cos bs.out *= $math.cos bs.out
scoreboard players operation $math.cos bs.out *= -4 bs.const
scoreboard players add $math.cos bs.out 324000000
scoreboard players add #y bs.ctx 324000000
scoreboard players operation #y bs.ctx /= 1000 bs.const
execute if score #x bs.ctx matches 9000..27000 run scoreboard players operation #y bs.ctx *= -1 bs.const
return run scoreboard players operation $math.cos bs.out /= #y bs.ctx
