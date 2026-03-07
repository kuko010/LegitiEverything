execute store result score #x bs.ctx run scoreboard players operation $math.divide bs.out = $math.divide.x bs.in
scoreboard players operation $math.divide bs.out /= $math.divide.y bs.in
execute store result score #y bs.ctx run scoreboard players operation #x bs.ctx %= $math.divide.y bs.in
scoreboard players operation #y bs.ctx -= $math.divide.y bs.in
scoreboard players operation #y bs.ctx *= -1 bs.const
execute if score #y bs.ctx < #x bs.ctx run scoreboard players add $math.divide bs.out 1
return run scoreboard players get $math.divide bs.out
