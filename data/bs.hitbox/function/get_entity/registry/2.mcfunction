data modify storage bs:out hitbox set value {width: 0, height: 0.5d}
execute store result score #w bs.ctx run data get entity @s Radius 20000000
execute store result storage bs:out hitbox.width double 0.0000001 run scoreboard players get #w bs.ctx
