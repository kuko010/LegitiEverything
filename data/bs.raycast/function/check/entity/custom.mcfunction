execute unless entity @s[scores={bs.width=1.., bs.height=1.., bs.depth=1..}] run return 0
scoreboard players operation #w bs.ctx = @s bs.width
scoreboard players operation #h bs.ctx = @s bs.height
scoreboard players operation #d bs.ctx = @s bs.depth
execute if entity @s[tag=bs.hitbox.centered] run return run function bs.raycast:check/entity/size
scoreboard players operation #raycast.ry bs.data += #h bs.ctx
function bs.raycast:check/entity/size
scoreboard players operation #raycast.ry bs.data -= #h bs.ctx
