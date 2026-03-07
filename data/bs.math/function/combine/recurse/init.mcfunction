scoreboard players operation #k bs.ctx -= #n bs.ctx
scoreboard players set #i bs.ctx 0
execute store result score #m bs.ctx run scoreboard players set $math.combine bs.out 1
function bs.math:combine/recurse/next
return run scoreboard players get $math.combine bs.out
