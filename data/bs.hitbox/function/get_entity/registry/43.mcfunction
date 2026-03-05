execute store result score #s bs.ctx run data get entity @s PuffState
execute if score #s bs.ctx matches 0 run return run data modify storage bs:out hitbox set value {width: 0.35d, height: 0.35d}
execute if score #s bs.ctx matches 1 run return run data modify storage bs:out hitbox set value {width: 0.48999998d, height: 0.48999998d}
execute if score #s bs.ctx matches 2 run return run data modify storage bs:out hitbox set value {width: 0.7d, height: 0.7d}
