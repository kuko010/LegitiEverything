data modify storage bs:ctx _ set from entity @s
execute if data storage bs:ctx _{pose: "standing"} run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 1.8d}
execute if data storage bs:ctx _{pose: "crouching"} run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 1.5d}
execute if data storage bs:ctx _{pose: "sleeping"} run return run data modify storage bs:out hitbox set value {width: 0.2d, height: 0.2d}
data modify storage bs:out hitbox set value {width: 0.6d, height: 0.6d}
