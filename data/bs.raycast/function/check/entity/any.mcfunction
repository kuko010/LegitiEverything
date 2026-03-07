execute if entity @s[scores={bs.width=0.., bs.height=0.., bs.depth=0..}] run return run function bs.raycast:check/entity/custom
function #bs.hitbox:get_entity
execute store result score #w bs.ctx run data get storage bs:out hitbox.width 5000
execute store result score #h bs.ctx run data get storage bs:out hitbox.height 5000
execute store result score #d bs.ctx run data get storage bs:out hitbox.depth 5000
execute unless score #w bs.ctx matches 1.. unless score #h bs.ctx matches 1.. unless score #d bs.ctx matches 1.. run return 0
execute store result score #s bs.ctx run data get storage bs:out hitbox.scale 1000
scoreboard players operation #w bs.ctx *= #s bs.ctx
scoreboard players operation #h bs.ctx *= #s bs.ctx
scoreboard players operation #d bs.ctx *= #s bs.ctx
execute if entity @s[type=#bs.hitbox:is_shaped] run return run function bs.raycast:check/entity/size
scoreboard players operation #raycast.ry bs.data += #h bs.ctx
function bs.raycast:check/entity/size
scoreboard players operation #raycast.ry bs.data -= #h bs.ctx
