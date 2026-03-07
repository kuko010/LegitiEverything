data modify storage bs:data load.modules[{module: "bs.math", version: "3.2.2"}].enabled set value 1b
execute unless score #bs.math.major_versions load.status matches 2.. if score $bs.math.major load.status matches 3 if score $bs.math.minor load.status matches 2 if score $bs.math.patch load.status matches 2 run return 1
function #bs.load:process/errors/math
return fail
