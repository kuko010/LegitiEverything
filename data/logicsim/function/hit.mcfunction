execute store result score @s hit_x run data get storage bs:out raycast.hit_point[0] 1
execute store result score @s hit_y run data get storage bs:out raycast.hit_point[1] 1
execute store result score @s hit_z run data get storage bs:out raycast.hit_point[2] 1
tellraw @a [{text: "Hit: "}, {score: {name: "@s", objective: "hit_x"}}, {text: " "}, {score: {name: "@s", objective: "hit_y"}}, {text: " "}, {score: {name: "@s", objective: "hit_z"}}]
