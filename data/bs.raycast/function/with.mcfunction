data modify storage bs:data raycast set value {sx: 1, sy: 1, sz: 1, blocks: true, entities: false, max_distance: 16.0d, ignored_blocks: "#bs.hitbox:intangible", ignored_entities: "#bs.hitbox:intangible", data: {hit_point: 1b, hit_normal: 1b, targeted_block: 1b, targeted_entity: 1b}}
$data modify storage bs:data raycast merge value $(with)
