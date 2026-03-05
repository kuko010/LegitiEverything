execute if function bs.hitbox:is_entity_in_blocks/recurse/z run return 1
scoreboard players remove #y bs.ctx 10000000
scoreboard players remove #j bs.ctx 10000000
execute if score #j bs.ctx matches 1.. positioned ~ ~1 ~ if function bs.hitbox:is_entity_in_blocks/recurse/y run return 1
scoreboard players add #y bs.ctx 10000000
scoreboard players add #j bs.ctx 10000000
