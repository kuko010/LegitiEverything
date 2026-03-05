execute store result score #s bs.ctx run data get entity @s Size
scoreboard players add #s bs.ctx 1
scoreboard players operation #s bs.ctx *= 255 bs.const
scoreboard players set #w bs.ctx 2040
scoreboard players set #h bs.ctx 2040
execute store result storage bs:out hitbox.width double 0.000001 run scoreboard players operation #w bs.ctx *= #s bs.ctx
execute store result storage bs:out hitbox.height double 0.000001 run scoreboard players operation #h bs.ctx *= #s bs.ctx
