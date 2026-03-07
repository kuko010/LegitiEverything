execute store result score #f bs.ctx run data get entity @s Facing
execute if score #f bs.ctx matches 0 run return run data modify storage bs:out hitbox set value {width: 0.75d, height: 0.0625d, depth: 0.75d, shape: [[2.0d, 14.46875d, 2.0d, 14.0d, 16.0d, 14.0d]]}
execute if score #f bs.ctx matches 1 run return run data modify storage bs:out hitbox set value {width: 0.75d, height: 0.0625d, depth: 0.75d, shape: [[2.0d, 0.0d, 2.0d, 14.0d, 1.53125d, 14.0d]]}
execute if score #f bs.ctx matches 2 run return run data modify storage bs:out hitbox set value {width: 0.75d, height: 0.75d, depth: 0.0625d, shape: [[2.0d, 2.0d, 14.46875d, 14.0d, 14.0d, 16.0d]]}
execute if score #f bs.ctx matches 3 run return run data modify storage bs:out hitbox set value {width: 0.75d, height: 0.75d, depth: 0.0625d, shape: [[2.0d, 2.0d, 0.0d, 14.0d, 14.0d, 1.53125d]]}
execute if score #f bs.ctx matches 4 run return run data modify storage bs:out hitbox set value {width: 0.0625d, height: 0.75d, depth: 0.75d, shape: [[14.46875d, 2.0d, 2.0d, 16.0d, 14.0d, 14.0d]]}
execute if score #f bs.ctx matches 5 run return run data modify storage bs:out hitbox set value {width: 0.0625d, height: 0.75d, depth: 0.75d, shape: [[0.0d, 2.0d, 2.0d, 1.53125d, 14.0d, 14.0d]]}
