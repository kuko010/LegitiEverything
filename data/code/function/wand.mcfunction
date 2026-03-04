# Tenn's stuff
tag @s add tel
execute at @s as @s run tp @e[tag=!tel,distance=..4.5] ^ ^ ^3
execute as @a[tag=tel] unless items entity @s weapon.offhand stick[item_name=wand] run tag @s remove tel