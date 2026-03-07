execute store result score #x bs.ctx run data get storage bs:ctx x 1
execute unless score #x bs.ctx matches -8388607..8388607 run return run scoreboard players set #e bs.ctx 24
execute store result score #x bs.ctx run data get storage bs:ctx x 256
execute unless score #x bs.ctx matches -8388607..8388607 run return run scoreboard players set #e bs.ctx 16
execute store result score #x bs.ctx run data get storage bs:ctx x 65536
execute unless score #x bs.ctx matches -8388607..8388607 run return run scoreboard players set #e bs.ctx 8
execute store result score #x bs.ctx run data get storage bs:ctx x 16777216
scoreboard players set #e bs.ctx 0
