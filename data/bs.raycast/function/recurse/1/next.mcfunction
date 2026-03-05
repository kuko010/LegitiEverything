$execute unless block ~ ~ ~ $(ignored_blocks) run function bs.raycast:check/block/any with storage bs:data raycast
execute if score #raycast.max_distance bs.data matches 1.. if score $raycast.distance bs.lambda <= #raycast.lx bs.data if score $raycast.distance bs.lambda <= #raycast.ly bs.data if score $raycast.distance bs.lambda <= #raycast.lz bs.data run function bs.raycast:collide/any
execute if score #raycast.lx bs.data <= #raycast.ly bs.data if score #raycast.lx bs.data <= #raycast.lz bs.data if score #raycast.lx bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/1/x with storage bs:data raycast
execute if score #raycast.ly bs.data <= #raycast.lz bs.data if score #raycast.ly bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/1/y with storage bs:data raycast
execute if score #raycast.lz bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/1/z with storage bs:data raycast
