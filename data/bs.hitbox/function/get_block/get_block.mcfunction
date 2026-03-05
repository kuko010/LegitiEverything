function #bs.log:warn {namespace: "bs.hitbox", path: "#bs.hitbox:get_block", tag: "get_block", message: ["The ", {text: "#bs.hitbox:get_block", color: "#8d7fdd"}, " has been deprecated. Please use either ", {text: "#bs.hitbox:get_block_shape", color: "#8d7fdd"}, " or ", {text: "#bs.hitbox:get_block_collision", color: "#8d7fdd"}, " instead."]}
data modify storage bs:out hitbox set value {}
loot replace entity 000000b5-0000-0000-0000-000000000003 contents loot bs.hitbox:block/get_collision
data modify storage bs:out hitbox.interaction_shape set from entity 000000b5-0000-0000-0000-000000000003 item.components."minecraft:custom_data".shape
loot replace entity 000000b5-0000-0000-0000-000000000003 contents loot bs.hitbox:block/get_shape
data modify storage bs:out hitbox.collision_shape set from entity 000000b5-0000-0000-0000-000000000003 item.components."minecraft:custom_data".shape
execute if block ~ ~ ~ #bs.hitbox:has_shape_offset summon minecraft:marker run function bs.hitbox:get_block/offset/get
