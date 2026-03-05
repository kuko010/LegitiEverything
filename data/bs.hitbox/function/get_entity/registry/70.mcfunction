execute at @s positioned ~ ~1 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 0.9d, height: 1.3d}
execute unless predicate bs.hitbox:internal/is_baby run return run data modify storage bs:out hitbox set value {width: 0.63d, height: 0.90999997d}
execute at @s positioned ~ ~0.5 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 0.45d, height: 0.65d}
data modify storage bs:out hitbox set value {width: 0.315d, height: 0.45499998d}
