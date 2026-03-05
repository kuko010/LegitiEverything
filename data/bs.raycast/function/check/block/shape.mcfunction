execute store result score #x bs.ctx run data get storage bs:lambda hitbox.shape[-1][0] 625000
execute store result score #y bs.ctx run data get storage bs:lambda hitbox.shape[-1][1] 625000
execute store result score #z bs.ctx run data get storage bs:lambda hitbox.shape[-1][2] 625000
execute store result score #i bs.ctx run data get storage bs:lambda hitbox.shape[-1][3] 625000
execute store result score #j bs.ctx run data get storage bs:lambda hitbox.shape[-1][4] 625000
execute store result score #k bs.ctx run data get storage bs:lambda hitbox.shape[-1][5] 625000
scoreboard players operation #x bs.ctx += #p bs.ctx
scoreboard players operation #z bs.ctx += #q bs.ctx
scoreboard players operation #i bs.ctx += #p bs.ctx
scoreboard players operation #k bs.ctx += #q bs.ctx
scoreboard players operation #x bs.ctx /= #raycast.ux bs.data
scoreboard players operation #i bs.ctx /= #raycast.ux bs.data
scoreboard players operation #y bs.ctx /= #raycast.uy bs.data
scoreboard players operation #j bs.ctx /= #raycast.uy bs.data
scoreboard players operation #z bs.ctx /= #raycast.uz bs.data
scoreboard players operation #k bs.ctx /= #raycast.uz bs.data
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #x bs.ctx >< #i bs.ctx
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #y bs.ctx >< #j bs.ctx
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #z bs.ctx >< #k bs.ctx
scoreboard players operation #x bs.ctx += #raycast.lx bs.data
scoreboard players operation #i bs.ctx += #raycast.lx bs.data
scoreboard players operation #y bs.ctx += #raycast.ly bs.data
scoreboard players operation #j bs.ctx += #raycast.ly bs.data
scoreboard players operation #z bs.ctx += #raycast.lz bs.data
scoreboard players operation #k bs.ctx += #raycast.lz bs.data
scoreboard players operation #x bs.ctx > #y bs.ctx
scoreboard players operation #x bs.ctx > #z bs.ctx
scoreboard players operation #i bs.ctx < #j bs.ctx
scoreboard players operation #i bs.ctx < #k bs.ctx
execute if score #x bs.ctx matches 0.. if score #x bs.ctx <= #i bs.ctx if score #x bs.ctx <= #raycast.max_distance bs.data run function bs.raycast:collide/record/shape
data remove storage bs:lambda hitbox.shape[-1]
execute if data storage bs:lambda hitbox.shape[-1] run function bs.raycast:check/block/shape
