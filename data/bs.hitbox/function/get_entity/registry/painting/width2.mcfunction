execute positioned ~1 ~ ~ unless entity @s[dx=0] positioned ~-1 ~ ~ run return run function bs.hitbox:get_entity/registry/painting/width1
scoreboard players add #w bs.ctx 2
execute positioned ~1 ~ ~ run function bs.hitbox:get_entity/registry/painting/width1
