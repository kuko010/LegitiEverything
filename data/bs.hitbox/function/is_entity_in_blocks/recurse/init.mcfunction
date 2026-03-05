scoreboard players operation #l bs.ctx /= 10000000 bs.const
scoreboard players operation #l bs.ctx *= 10000000 bs.const
scoreboard players operation #x bs.ctx -= #l bs.ctx
scoreboard players operation #i bs.ctx -= #l bs.ctx
scoreboard players operation #m bs.ctx /= 10000000 bs.const
scoreboard players operation #m bs.ctx *= 10000000 bs.const
scoreboard players operation #y bs.ctx -= #m bs.ctx
scoreboard players operation #j bs.ctx -= #m bs.ctx
scoreboard players operation #n bs.ctx /= 10000000 bs.const
scoreboard players operation #n bs.ctx *= 10000000 bs.const
scoreboard players operation #z bs.ctx -= #n bs.ctx
scoreboard players operation #k bs.ctx -= #n bs.ctx
$execute at @s align xyz positioned ~$(x) ~$(y) ~$(z) run return run function bs.hitbox:is_entity_in_blocks/recurse/x
