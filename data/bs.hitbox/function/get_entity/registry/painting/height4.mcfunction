execute positioned ~ ~4 ~ unless entity @s[dx=0] positioned ~ ~-4 ~ run return run function bs.hitbox:get_entity/registry/painting/height3
scoreboard players add #h bs.ctx 8
execute positioned ~ ~4 ~ run function bs.hitbox:get_entity/registry/painting/height3
