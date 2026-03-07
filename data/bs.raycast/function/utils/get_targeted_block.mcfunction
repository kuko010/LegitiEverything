scoreboard players operation #x bs.ctx = #raycast.lx bs.data
scoreboard players operation #x bs.ctx /= #raycast.dx bs.data
scoreboard players operation #y bs.ctx = #raycast.ly bs.data
scoreboard players operation #y bs.ctx /= #raycast.dy bs.data
scoreboard players operation #z bs.ctx = #raycast.lz bs.data
scoreboard players operation #z bs.ctx /= #raycast.dz bs.data
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #x bs.ctx *= -1 bs.const
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #y bs.ctx *= -1 bs.const
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #z bs.ctx *= -1 bs.const
data modify storage bs:lambda raycast.targeted_block set value [0, 0, 0]
execute store result storage bs:lambda raycast.targeted_block[0] int 1 run scoreboard players operation #x bs.ctx += #raycast.x bs.data
execute store result storage bs:lambda raycast.targeted_block[1] int 1 run scoreboard players operation #y bs.ctx += #raycast.y bs.data
execute store result storage bs:lambda raycast.targeted_block[2] int 1 run scoreboard players operation #z bs.ctx += #raycast.z bs.data
