# raycast/step.mcfunction
# If we hit the furnace, we're done
execute if block ~ ~ ~ furnace[lit=true] run function logicsim:spawn/spawn_source_marker

# If we hit any other solid block, stop (we missed)
execute unless block ~ ~ ~ furnace[lit=true] unless block ~ ~ ~ air run return 0

# Otherwise step forward and recurse
execute unless block ~ ~ ~ furnace[lit=true] positioned ^ ^ ^0.1 run function logicsim:raycast/furnace_step