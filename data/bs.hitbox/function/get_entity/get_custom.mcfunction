data modify storage bs:out hitbox set value {scale: 1.0d}
execute store result storage bs:out hitbox.width double 0.0000002 run scoreboard players get @s bs.width
execute store result storage bs:out hitbox.depth double 0.0000002 run scoreboard players get @s bs.depth
execute store result storage bs:out hitbox.height double 0.0000001 run scoreboard players get @s bs.height
