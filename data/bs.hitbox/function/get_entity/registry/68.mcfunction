execute if entity @s[gamemode=spectator] run return run data modify storage bs:out hitbox set value {width: 0.0d, height: 0.0d}
execute if predicate bs.hitbox:internal/is_sneaking run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 1.5d}
execute if predicate bs.hitbox:internal/is_swimming run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 0.6d}
execute if predicate bs.hitbox:internal/is_gliding run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 0.6d}
data modify storage bs:out hitbox set value {width: 0.6d, height: 1.8d}
