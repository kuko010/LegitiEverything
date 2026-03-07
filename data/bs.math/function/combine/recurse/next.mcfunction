scoreboard players add #k bs.ctx 1
scoreboard players add #i bs.ctx 1
scoreboard players operation $math.combine bs.out /= #i bs.ctx
scoreboard players operation $math.combine bs.out *= #k bs.ctx
scoreboard players operation #m bs.ctx %= #i bs.ctx
scoreboard players operation #m bs.ctx *= #k bs.ctx
scoreboard players operation #m bs.ctx /= #i bs.ctx
execute store result score #m bs.ctx run scoreboard players operation $math.combine bs.out += #m bs.ctx
execute if score #i bs.ctx < #n bs.ctx run function bs.math:combine/recurse/next
