execute as @a at @s if block ~ ~-1 ~ magma_block run particle flame ~ ~ ~ 0.125 0.0 0.125 0.05 1
execute as @a run effect give @s saturation infinite 1 true
# Tenn's stuff
execute as @a if items entity @s weapon.offhand stick[minecraft:item_name=wand] run function code:wand
