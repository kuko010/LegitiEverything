scoreboard players remove #i bs.ctx 1
scoreboard players operation $math.factorial bs.out *= #i bs.ctx
execute if score #i bs.ctx matches 3.. run function bs.math:factorial/loop
