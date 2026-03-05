execute store result score #r bs.ctx run function bs.hitbox:is_entity_in_blocks/check/any with storage bs:ctx _
execute if score #r bs.ctx matches 1 run return 1
scoreboard players remove #z bs.ctx 10000000
scoreboard players remove #k bs.ctx 10000000
execute if score #k bs.ctx matches 1.. positioned ~ ~ ~1 if function bs.hitbox:is_entity_in_blocks/recurse/z run return 1
scoreboard players add #z bs.ctx 10000000
scoreboard players add #k bs.ctx 10000000
