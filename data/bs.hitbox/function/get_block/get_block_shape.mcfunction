loot replace entity 000000b5-0000-0000-0000-000000000003 contents loot bs.hitbox:block/get_shape
data modify storage bs:out hitbox set from entity 000000b5-0000-0000-0000-000000000003 item.components."minecraft:custom_data"
execute if block ~ ~ ~ #bs.hitbox:has_shape_offset summon minecraft:marker run function bs.hitbox:get_block/offset/get
