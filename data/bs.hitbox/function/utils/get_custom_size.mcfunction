execute summon minecraft:marker run function bs.hitbox:utils/get_negative_pos
execute in minecraft:overworld positioned as @s as 000000b5-0000-0000-0000-000000000001 run function bs.hitbox:utils/get_entity_pos with storage bs:ctx
execute store result score #x bs.ctx store result score #i bs.ctx run data get storage bs:ctx _[0] 10000000
execute store result score #y bs.ctx store result score #j bs.ctx run data get storage bs:ctx _[1] 10000000
execute store result score #z bs.ctx store result score #k bs.ctx run data get storage bs:ctx _[2] 10000000
scoreboard players operation #x bs.ctx -= @s bs.width
execute if entity @s[tag=bs.hitbox.centered] run scoreboard players operation #y bs.ctx -= @s bs.height
scoreboard players operation #z bs.ctx -= @s bs.depth
scoreboard players operation #i bs.ctx += @s bs.width
execute if score #y bs.ctx = #j bs.ctx run scoreboard players operation #j bs.ctx += @s bs.height
scoreboard players operation #j bs.ctx += @s bs.height
scoreboard players operation #k bs.ctx += @s bs.depth
