execute store result score #i bs.ctx run data get storage bs:ctx _[-1][0] 625000
execute store result score #j bs.ctx run data get storage bs:ctx _[-1][1] 625000
execute store result score #k bs.ctx run data get storage bs:ctx _[-1][2] 625000
execute store result score #o bs.ctx run data get storage bs:ctx _[-1][3] 625000
execute store result score #p bs.ctx run data get storage bs:ctx _[-1][4] 625000
execute store result score #q bs.ctx run data get storage bs:ctx _[-1][5] 625000
data remove storage bs:ctx _[-1]
scoreboard players operation #i bs.ctx += #u bs.ctx
scoreboard players operation #o bs.ctx += #u bs.ctx
scoreboard players operation #k bs.ctx += #v bs.ctx
scoreboard players operation #q bs.ctx += #v bs.ctx
execute if score #x bs.ctx >= #i bs.ctx if score #x bs.ctx < #o bs.ctx if score #y bs.ctx >= #j bs.ctx if score #y bs.ctx < #p bs.ctx if score #z bs.ctx >= #k bs.ctx if score #z bs.ctx < #q bs.ctx run return 1
execute if data storage bs:ctx _[0] run return run function bs.hitbox:is_in_block/check
