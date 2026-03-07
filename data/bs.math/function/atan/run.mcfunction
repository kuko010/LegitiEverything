execute store result entity @s Pos[0] double 0.001 run scoreboard players get $math.atan.x bs.in
data modify entity @s Pos[2] set value 1.0d
execute positioned 0.0 0.0 0.0 facing entity @s feet rotated ~ 0.0 run tp @s -30000000 0 1600 ~ ~
execute store result score $math.atan bs.out run data get entity @s Rotation[0] -100
execute if score $math.atan bs.out matches ..-18000 run scoreboard players add $math.atan bs.out 36000
execute if score $math.atan bs.out matches 18001.. run scoreboard players remove $math.atan bs.out 36000
return run scoreboard players get $math.atan bs.out
