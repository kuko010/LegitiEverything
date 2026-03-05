scoreboard players operation @s bs.toi = #x bs.ctx
scoreboard players operation #raycast.etoi bs.data < #x bs.ctx
scoreboard players operation $raycast.distance bs.lambda < #raycast.etoi bs.data
tag @s remove bs.raycast.nx
tag @s remove bs.raycast.ny
tag @s remove bs.raycast.nz
execute if score #z bs.ctx = #x bs.ctx run return run tag @s add bs.raycast.nz
execute if score #y bs.ctx = #x bs.ctx run return run tag @s add bs.raycast.ny
tag @s add bs.raycast.nx
