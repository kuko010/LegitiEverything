execute positioned ~ ~ ~1 unless entity @s[dx=0] positioned ~ ~ ~-1 run return run function bs.hitbox:get_entity/registry/painting/depth1
scoreboard players add #d bs.ctx 2
execute positioned ~ ~ ~1 run function bs.hitbox:get_entity/registry/painting/depth1
