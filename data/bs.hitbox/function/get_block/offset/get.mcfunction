execute store result score #u bs.ctx store result storage bs:ctx x int 1 run data get entity @s Pos[0]
execute store result score #v bs.ctx store result storage bs:ctx z int 1 run data get entity @s Pos[2]
function bs.hitbox:get_block/offset/fetch with storage bs:ctx
execute if score #s bs.ctx matches 0 run function bs.hitbox:get_block/offset/compute
tp @s ~ -1000000 ~
kill @s
execute if block ~ ~ ~ minecraft:pointed_dripstone run function bs.hitbox:get_block/offset/clamp {min: -1250000, max: 1250000}
