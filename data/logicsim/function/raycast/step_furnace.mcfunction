# If we hit the furnace, we're done
execute if block ~ ~ ~ furnace[lit=true] run function logicsim:events/source_spawn_block
execute unless block ~ ~ ~ furnace[lit=true] unless block ~ ~ ~ air run return 0
execute unless block ~ ~ ~ furnace[lit=true] positioned ^ ^ ^0.1 run function logicsim:raycast/step