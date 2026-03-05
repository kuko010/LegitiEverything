execute if function bs.hitbox:is_entity_in_blocks/recurse/y run return 1
scoreboard players remove #x bs.ctx 10000000
scoreboard players remove #i bs.ctx 10000000
execute if score #i bs.ctx matches 1.. positioned ~1 ~ ~ run return run function bs.hitbox:is_entity_in_blocks/recurse/x
