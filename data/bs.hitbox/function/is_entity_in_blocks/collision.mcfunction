execute at @s run function bs.hitbox:utils/get_entity_size
execute store result storage bs:ctx x double 0.0000001 run scoreboard players operation #l bs.ctx = #x bs.ctx
execute store result storage bs:ctx y double 0.0000001 run scoreboard players operation #m bs.ctx = #y bs.ctx
execute store result storage bs:ctx z double 0.0000001 run scoreboard players operation #n bs.ctx = #z bs.ctx
data modify storage bs:ctx _ set value {shape: "#bs.hitbox:get_block_collision", ignored: "#bs.hitbox:can_pass_through"}
return run function bs.hitbox:is_entity_in_blocks/recurse/init with storage bs:ctx
