execute in minecraft:overworld positioned as @s as 000000b5-0000-0000-0000-000000000001 run function bs.raycast:utils/get_entity_pos with storage bs:data raycast
execute store result score #x bs.ctx run data get storage bs:ctx _[0] 10000000
execute store result score #y bs.ctx run data get storage bs:ctx _[1] 10000000
execute store result score #z bs.ctx run data get storage bs:ctx _[2] 10000000
execute store result score #i bs.ctx run scoreboard players operation #x bs.ctx += #raycast.rx bs.data
execute store result score #j bs.ctx run scoreboard players operation #y bs.ctx += #raycast.ry bs.data
execute store result score #k bs.ctx run scoreboard players operation #z bs.ctx += #raycast.rz bs.data
scoreboard players operation #x bs.ctx -= #w bs.ctx
scoreboard players operation #y bs.ctx -= #h bs.ctx
scoreboard players operation #z bs.ctx -= #d bs.ctx
scoreboard players operation #i bs.ctx += #w bs.ctx
scoreboard players operation #j bs.ctx += #h bs.ctx
scoreboard players operation #k bs.ctx += #d bs.ctx
scoreboard players operation #x bs.ctx /= #raycast.ux bs.data
scoreboard players operation #i bs.ctx /= #raycast.ux bs.data
scoreboard players operation #y bs.ctx /= #raycast.uy bs.data
scoreboard players operation #j bs.ctx /= #raycast.uy bs.data
scoreboard players operation #z bs.ctx /= #raycast.uz bs.data
scoreboard players operation #k bs.ctx /= #raycast.uz bs.data
execute if score #raycast.ux bs.data matches ..-1 run scoreboard players operation #x bs.ctx >< #i bs.ctx
execute if score #raycast.uy bs.data matches ..-1 run scoreboard players operation #y bs.ctx >< #j bs.ctx
execute if score #raycast.uz bs.data matches ..-1 run scoreboard players operation #z bs.ctx >< #k bs.ctx
scoreboard players operation #x bs.ctx > #y bs.ctx
scoreboard players operation #x bs.ctx > #z bs.ctx
scoreboard players operation #i bs.ctx < #j bs.ctx
scoreboard players operation #i bs.ctx < #k bs.ctx
execute if score #x bs.ctx matches 0.. if score #x bs.ctx <= #i bs.ctx if score #x bs.ctx <= #raycast.max_distance bs.data run return run function bs.raycast:collide/record/size
scoreboard players set @s bs.toi 2147483647
