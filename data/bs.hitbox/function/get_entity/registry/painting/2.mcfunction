data modify storage bs:out hitbox set value {width: 0.0d, height: 0.0d, depth: 0.0625d, shape: [[0, 0, 15, 16, 16, 16]]}
execute store result score #w bs.ctx run scoreboard players set #h bs.ctx 0
execute at @s run function bs.hitbox:get_entity/registry/painting/width4
execute at @s run function bs.hitbox:get_entity/registry/painting/height4
