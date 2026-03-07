scoreboard players operation $math.sin bs.out = $math.sin.x bs.in
execute store result score #x bs.ctx run scoreboard players operation $math.sin bs.out %= 36000 bs.const
execute if score #x bs.ctx matches ..18000 run scoreboard players remove $math.sin bs.out 9000
execute if score #x bs.ctx matches 18001.. run scoreboard players remove $math.sin bs.out 27000
execute store result score #y bs.ctx run scoreboard players operation $math.sin bs.out *= $math.sin bs.out
scoreboard players operation $math.sin bs.out *= -4 bs.const
scoreboard players add $math.sin bs.out 324000000
scoreboard players add #y bs.ctx 324000000
scoreboard players operation #y bs.ctx /= 1000 bs.const
execute if score #x bs.ctx matches 18000.. run scoreboard players operation #y bs.ctx *= -1 bs.const
return run scoreboard players operation $math.sin bs.out /= #y bs.ctx
