data modify storage bs:ctx _ set from entity @s
execute if data storage bs:ctx _{Marker: 1b} run return run data modify storage bs:out hitbox set value {width: 0.0d, height: 0.0d}
execute if data storage bs:ctx _{Small: 1b} run return run data modify storage bs:out hitbox set value {width: 0.25d, height: 0.9875d}
data modify storage bs:out hitbox set value {width: 0.5d, height: 1.975d}
