execute store result score @s x_pos run data get entity @s Pos[0] 1
execute store result score @s y_pos run data get entity @s Pos[1] 1
execute store result score @s z_pos run data get entity @s Pos[2] 1
scoreboard players operation @s temp = @s x_pos
scoreboard players operation @s temp += @s z_pos
tellraw @s [{text: "X: "}, {score: {name: "@s", objective: "x_pos"}}, {text: " Y: "}, {score: {name: "@s", objective: "y_pos"}}, {text: " Z: "}, {score: {name: "@s", objective: "z_pos"}}]
tellraw @s [{text: "X+Z = "}, {score: {name: "@s", objective: "temp"}}]
