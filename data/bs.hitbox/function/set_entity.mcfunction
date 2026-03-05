tag @s add bs.hitbox.custom
tag @s remove bs.hitbox.baked
tag @s remove bs.hitbox.centered
$data modify storage bs:ctx _ set value $(with)
execute if data storage bs:ctx _{centered: true} run tag @s add bs.hitbox.centered
execute unless data storage bs:ctx _.depth run data modify storage bs:ctx _.depth set from storage bs:ctx _.width
execute store result score @s bs.height run data get storage bs:ctx _.height 5000000
execute store result score @s bs.width run data get storage bs:ctx _.width 5000000
execute store result score @s bs.depth run data get storage bs:ctx _.depth 5000000
