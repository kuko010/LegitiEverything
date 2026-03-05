execute store result score #u bs.ctx run data get storage bs:out hitbox.offset.x 10000000
execute store result score #v bs.ctx run data get storage bs:out hitbox.offset.z 10000000
$execute if score #u bs.ctx matches ..$(min) run scoreboard players set #u bs.ctx $(min)
$execute if score #v bs.ctx matches ..$(min) run scoreboard players set #v bs.ctx $(min)
$execute if score #u bs.ctx matches $(max).. run scoreboard players set #u bs.ctx $(max)
$execute if score #v bs.ctx matches $(max).. run scoreboard players set #v bs.ctx $(max)
execute store result storage bs:out hitbox.offset.x double 0.0000001 run scoreboard players get #u bs.ctx
execute store result storage bs:out hitbox.offset.z double 0.0000001 run scoreboard players get #v bs.ctx
