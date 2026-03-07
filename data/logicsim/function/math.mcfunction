execute store result score @s x_pos run data get entity @s Pos[0] 1
execute store result score @s y_pos run data get entity @s Pos[1] 1
execute store result score @s z_pos run data get entity @s Pos[2] 1
scoreboard players operation @s temp = @s x_pos
scoreboard players operation @s temp += @s z_pos
scoreboard players operation $math.acos.x bs.in = @s x_pos
function #bs.math:acos
tellraw @s [{text: "acos(Player X) = ", color: "dark_gray"}, {score: {name: "$math.acos", objective: "bs.out"}, color: "gold"}]
tellraw @s [{text: "X+Z = "}, {score: {name: "@s", objective: "temp"}}]
say lolko
