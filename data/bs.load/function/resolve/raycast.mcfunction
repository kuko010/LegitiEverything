data modify storage bs:data load.modules[{module: "bs.raycast", version: "3.2.2"}].enabled set value 1b
execute unless score #bs.raycast.major_versions load.status matches 2.. if score $bs.raycast.major load.status matches 3 if score $bs.raycast.minor load.status matches 2 if score $bs.raycast.patch load.status matches 2 run return 1
function #bs.load:process/errors/raycast
return fail
