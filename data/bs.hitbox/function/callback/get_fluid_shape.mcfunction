execute if block ~ ~ ~ #bs.hitbox:internal/water if block ~ ~1 ~ #bs.hitbox:internal/water run return 2
execute if block ~ ~ ~ minecraft:lava if block ~ ~1 ~ minecraft:lava run return 2
function bs.hitbox:callback/get_fluid_shape_level
