execute at @s positioned ~ ~1.5 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 1.9d, height: 1.75d}
execute unless predicate bs.hitbox:internal/is_baby run return run data modify storage bs:out hitbox set value {width: 1.9d, height: 0.4d}
execute at @s positioned ~ ~0.5 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 0.95d, height: 0.875d}
data modify storage bs:out hitbox set value {width: 0.95d, height: 0.4d}
