execute at @s positioned ~ ~0.5 ~ unless entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 0.2d, height: 0.2d}
execute unless predicate bs.hitbox:internal/is_baby run return run data modify storage bs:out hitbox set value {width: 0.6d, height: 1.95d}
data modify storage bs:out hitbox set value {width: 0.3d, height: 0.975d}
