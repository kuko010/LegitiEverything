data remove storage bs:lambda hitbox
scoreboard players set $raycast.hit_flag bs.lambda 0
$execute store result score $raycast.hit_flag bs.lambda run $(blocks)
execute if score $raycast.hit_flag bs.lambda matches 1.. unless data storage bs:lambda hitbox run return run function bs.raycast:collide/cube
execute store result score #p bs.ctx run data get storage bs:lambda hitbox.offset.x 10000000
execute store result score #q bs.ctx run data get storage bs:lambda hitbox.offset.z 10000000
execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data -= #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data -= #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data -= #raycast.dz bs.data
execute if data storage bs:lambda hitbox.shape[-1] run function bs.raycast:check/block/shape
execute if score #raycast.ux bs.data matches 0.. run scoreboard players operation #raycast.lx bs.data += #raycast.dx bs.data
execute if score #raycast.uy bs.data matches 0.. run scoreboard players operation #raycast.ly bs.data += #raycast.dy bs.data
execute if score #raycast.uz bs.data matches 0.. run scoreboard players operation #raycast.lz bs.data += #raycast.dz bs.data
