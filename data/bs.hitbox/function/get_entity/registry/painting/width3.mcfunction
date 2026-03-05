execute positioned ~2 ~ ~ unless entity @s[dx=0] positioned ~-2 ~ ~ run return run function bs.hitbox:get_entity/registry/painting/width2
scoreboard players add #w bs.ctx 4
execute positioned ~2 ~ ~ run function bs.hitbox:get_entity/registry/painting/width2
