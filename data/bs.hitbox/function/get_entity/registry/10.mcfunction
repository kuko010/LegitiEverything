execute at @s positioned ~ ~1 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 1.7d, height: 2.375d}
execute unless predicate bs.hitbox:internal/is_baby run return run data modify storage bs:out hitbox set value {width: 1.7d, height: 0.945d}
execute at @s positioned ~ ~1 ~ if entity @s[dx=0] run return run data modify storage bs:out hitbox set value {width: 0.765d, height: 1.06875d}
data modify storage bs:out hitbox set value {width: 0.765d, height: 0.42525d}
