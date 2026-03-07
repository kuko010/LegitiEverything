execute if score $math.factorial.n bs.in matches 0 run return run scoreboard players set $math.factorial bs.out 1
execute if score $math.factorial.n bs.in matches 1 run return run scoreboard players set $math.factorial bs.out 1
execute if score $math.factorial.n bs.in matches 2 run return run scoreboard players set $math.factorial bs.out 2
execute if score $math.factorial.n bs.in matches 3 run return run scoreboard players set $math.factorial bs.out 6
execute if score $math.factorial.n bs.in matches 4 run return run scoreboard players set $math.factorial bs.out 24
execute if score $math.factorial.n bs.in matches 5 run return run scoreboard players set $math.factorial bs.out 120
execute if score $math.factorial.n bs.in matches 6 run return run scoreboard players set $math.factorial bs.out 720
execute if score $math.factorial.n bs.in matches 7 run return run scoreboard players set $math.factorial bs.out 5040
execute if score $math.factorial.n bs.in matches 8 run return run scoreboard players set $math.factorial bs.out 40320
execute if score $math.factorial.n bs.in matches 9 run return run scoreboard players set $math.factorial bs.out 362880
execute if score $math.factorial.n bs.in matches 10 run return run scoreboard players set $math.factorial bs.out 3628800
execute if score $math.factorial.n bs.in matches 11 run return run scoreboard players set $math.factorial bs.out 39916800
execute if score $math.factorial.n bs.in matches 12 run return run scoreboard players set $math.factorial bs.out 479001600
execute store result score #i bs.ctx run scoreboard players operation $math.factorial bs.out = $math.factorial.n bs.in
function bs.math:factorial/loop
return run scoreboard players get $math.factorial bs.out
