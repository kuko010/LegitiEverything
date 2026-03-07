scoreboard players set $math.ipow bs.out 1
execute if score $math.ipow.y bs.in matches 1.. store result score #j bs.ctx run scoreboard players operation #i bs.ctx = $math.ipow.x bs.in
execute if score $math.ipow.y bs.in matches 2.. store result score #k bs.ctx run scoreboard players operation #j bs.ctx *= #j bs.ctx
execute if score $math.ipow.y bs.in matches 4.. store result score #l bs.ctx run scoreboard players operation #k bs.ctx *= #k bs.ctx
execute if score $math.ipow.y bs.in matches 8.. store result score #m bs.ctx run scoreboard players operation #l bs.ctx *= #l bs.ctx
execute if score $math.ipow.y bs.in matches 16.. run scoreboard players operation #m bs.ctx *= #m bs.ctx
scoreboard players operation #y bs.ctx = $math.ipow.y bs.in
execute if score #y bs.ctx matches 16.. run scoreboard players operation $math.ipow bs.out *= #m bs.ctx
execute if score #y bs.ctx matches 16.. run scoreboard players remove #y bs.ctx 16
execute if score #y bs.ctx matches 8.. run scoreboard players operation $math.ipow bs.out *= #l bs.ctx
execute if score #y bs.ctx matches 8.. run scoreboard players remove #y bs.ctx 8
execute if score #y bs.ctx matches 4.. run scoreboard players operation $math.ipow bs.out *= #k bs.ctx
execute if score #y bs.ctx matches 4.. run scoreboard players remove #y bs.ctx 4
execute if score #y bs.ctx matches 2.. run scoreboard players operation $math.ipow bs.out *= #j bs.ctx
execute if score #y bs.ctx matches 2.. run scoreboard players remove #y bs.ctx 2
execute if score #y bs.ctx matches 1.. run scoreboard players operation $math.ipow bs.out *= #i bs.ctx
return run scoreboard players get $math.ipow bs.out
