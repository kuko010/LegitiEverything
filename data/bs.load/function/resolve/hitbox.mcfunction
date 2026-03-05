data modify storage bs:data load.modules[{module: "bs.hitbox", version: "3.2.2"}].enabled set value 1b
execute unless score #bs.hitbox.major_versions load.status matches 2.. if score $bs.hitbox.major load.status matches 3 if score $bs.hitbox.minor load.status matches 2 if score $bs.hitbox.patch load.status matches 2 run return 1
function #bs.load:process/errors/hitbox
return fail
