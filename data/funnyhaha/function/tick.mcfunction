scoreboard players enable @a[tag=!arena] tp_femboy
execute as @a[scores={tp_femboy=1..}] at @s run tp jak7b ~ ~ ~
scoreboard players reset @a[scores={tp_femboy=1..}]

scoreboard players enable @a[tag=!arena] afk_femboy
execute as @a[scores={afk_femboy=1..}] run execute in minecraft:overworld run tp jak7b 36.37 61.00 22.89 37.87 6.06
scoreboard players reset @a[scores={afk_femboy=1..}]

scoreboard players enable @a rank-femboy
execute as @a[scores={rank-femboy=1..}] run tag @s add femboy
execute as @a[scores={rank-afk=1..}] run tag @s remove afk
execute as @a[scores={rank-femboy=1..}] run tag @s remove transgender
scoreboard players reset @a[scores={rank-femboy=1..}]

scoreboard players enable @a rank-afk
execute as @a[scores={rank-afk=1..}] run tag @s add afk
execute as @a[scores={rank-femboy=1..}] run tag @s remove femboy
execute as @a[scores={rank-transgender=1..}] run tag @s remove transgender
scoreboard players reset @a[scores={rank-afk=1..}]

scoreboard players enable @a rank-transgender
execute as @a[scores={rank-transgender=1..}] run tag @s add transgender
execute as @a[scores={rank-afk=1..}] run tag @s remove afk
execute as @a[scores={rank-femboy=1..}] run tag @s remove femboy
scoreboard players reset @a[scores={rank-afk=1..}]


scoreboard players enable @a rank-remove-all
execute as @a[scores={rank-remove-all=1..}] run tag @s remove afk
execute as @a[scores={rank-remove-all=1..}] run tag @s remove femboy
execute as @a[scores={rank-remove-all=1..}] run tag @s remove transgender
scoreboard players reset @a[scores={rank-remove-all=1..}]

gamemode adventure burd_pack