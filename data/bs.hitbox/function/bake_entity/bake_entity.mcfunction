tag @s add bs.hitbox.baked
tag @s remove bs.hitbox.custom
tag @s remove bs.hitbox.centered
function #bs.hitbox:get_entity
execute store result score #w bs.ctx run data get storage bs:out hitbox.width 5000
execute store result score #h bs.ctx run data get storage bs:out hitbox.height 5000
execute store result score #d bs.ctx run data get storage bs:out hitbox.depth 5000
execute store result score #s bs.ctx run data get storage bs:out hitbox.scale 1000
scoreboard players operation #w bs.ctx *= #s bs.ctx
scoreboard players operation #h bs.ctx *= #s bs.ctx
scoreboard players operation #d bs.ctx *= #s bs.ctx
execute if entity @s[type=#bs.hitbox:is_shaped] run tag @s add bs.hitbox.centered
execute store result score #y bs.ctx run data get entity @s Pos[1] 10000
execute unless entity @s[tag=bs.hitbox.centered] on passengers run function bs.hitbox:bake_entity/passengers
execute store result score @s bs.width run scoreboard players get #w bs.ctx
execute store result score @s bs.height run scoreboard players get #h bs.ctx
execute store result score @s bs.depth run scoreboard players get #d bs.ctx
