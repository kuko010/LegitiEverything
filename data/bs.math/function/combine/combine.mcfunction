execute store result score #n bs.ctx run scoreboard players set #k bs.ctx 0
execute if score $math.combine.n bs.in matches 0.. run scoreboard players operation #n bs.ctx = $math.combine.n bs.in
execute if score $math.combine.k bs.in matches 0.. run scoreboard players operation #k bs.ctx = $math.combine.k bs.in
execute if score #n bs.ctx > #k bs.ctx run scoreboard players operation #n bs.ctx >< #k bs.ctx
scoreboard players operation #t bs.ctx = #k bs.ctx
scoreboard players operation #t bs.ctx -= #n bs.ctx
scoreboard players operation #n bs.ctx < #t bs.ctx
execute if score #n bs.ctx matches 0 run return run scoreboard players set $math.combine bs.out 1
execute if score #n bs.ctx matches 1 run return run scoreboard players operation $math.combine bs.out = #k bs.ctx
execute if score #n bs.ctx matches 2.. run return run function bs.math:combine/recurse/init
