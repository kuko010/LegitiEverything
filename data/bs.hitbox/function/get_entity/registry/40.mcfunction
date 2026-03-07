data modify storage bs:out hitbox set value {}
execute store result score #s bs.ctx run data get entity @s Size 15
scoreboard players add #s bs.ctx 100
scoreboard players set #w bs.ctx 9
scoreboard players set #h bs.ctx 5
execute store result storage bs:out hitbox.width double 0.001 run scoreboard players operation #w bs.ctx *= #s bs.ctx
execute store result storage bs:out hitbox.height double 0.001 run scoreboard players operation #h bs.ctx *= #s bs.ctx
