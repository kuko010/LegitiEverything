execute if block ~ ~ ~ #bs.hitbox:intangible run return 0
function bs.hitbox:utils/get_entity_size
execute if block ~ ~ ~ #bs.hitbox:is_full_cube run return run execute if score #x bs.ctx matches ..9999999 if score #i bs.ctx matches 0.. if score #y bs.ctx matches ..9999999 if score #j bs.ctx matches 0.. if score #z bs.ctx matches ..9999999 if score #k bs.ctx matches 0..
function #bs.hitbox:get_block_shape
execute unless data storage bs:out hitbox.shape run return 0
data modify storage bs:ctx _ set from storage bs:out hitbox.shape
execute store result score #u bs.ctx run data get storage bs:out hitbox.offset.x 10000000
execute store result score #v bs.ctx run data get storage bs:out hitbox.offset.z 10000000
return run function bs.hitbox:is_entity_in_block/check
