execute if block ~ ~ ~ #bs.hitbox:is_full_cube run return 1
function #bs.hitbox:get_block_shape
data modify storage bs:lambda hitbox set from storage bs:out hitbox
