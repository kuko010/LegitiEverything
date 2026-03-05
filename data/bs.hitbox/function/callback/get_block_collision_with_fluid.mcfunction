execute if block ~ ~ ~ #bs.hitbox:is_full_cube run return 1
execute if block ~ ~ ~ #bs.hitbox:is_fluid run return run function bs.hitbox:callback/get_fluid_shape
function #bs.hitbox:get_block_collision
data modify storage bs:lambda hitbox set from storage bs:out hitbox
execute if block ~ ~ ~ #bs.hitbox:is_waterloggable[waterlogged=true] run data modify storage bs:lambda hitbox.shape append value [0, 0, 0, 16, 14.2222222d, 16, 2]
