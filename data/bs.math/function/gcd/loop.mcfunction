scoreboard players operation $math.gcd bs.out %= #t bs.ctx
scoreboard players operation $math.gcd bs.out >< #t bs.ctx
execute unless score #t bs.ctx matches 0 run function bs.math:gcd/loop
