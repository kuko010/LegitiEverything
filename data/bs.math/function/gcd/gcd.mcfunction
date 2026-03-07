scoreboard players operation $math.gcd bs.out = $math.gcd.a bs.in
scoreboard players operation #t bs.ctx = $math.gcd.b bs.in
function bs.math:gcd/loop
return run scoreboard players get $math.gcd bs.out
