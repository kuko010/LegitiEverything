$execute as @e[type=!$(ignored_entities),tag=$(entities),predicate=!bs.raycast:internal/checked,dx=0,sort=nearest] run function bs.raycast:check/entity/any
execute if score $raycast.distance bs.lambda <= #raycast.lx bs.data if score $raycast.distance bs.lambda <= #raycast.ly bs.data if score $raycast.distance bs.lambda <= #raycast.lz bs.data run function bs.raycast:collide/any
execute if score #raycast.lx bs.data <= #raycast.ly bs.data if score #raycast.lx bs.data <= #raycast.lz bs.data if score #raycast.lx bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/2/x with storage bs:data raycast
execute if score #raycast.ly bs.data <= #raycast.lz bs.data if score #raycast.ly bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/2/y with storage bs:data raycast
execute if score #raycast.lz bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/2/z with storage bs:data raycast
