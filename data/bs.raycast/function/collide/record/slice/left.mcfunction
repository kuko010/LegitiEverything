execute store result score #u bs.ctx run data get storage bs:data raycast.record[-1].tmin
execute store result score #v bs.ctx run data get storage bs:data raycast.record[-1].flag
execute if score #v bs.ctx = #f bs.ctx if score #i bs.ctx >= #u bs.ctx run return run function bs.raycast:collide/record/slice/merge_left
data modify storage bs:ctx _.left prepend from storage bs:data raycast.record[-1]
data remove storage bs:data raycast.record[-1]
execute if data storage bs:data raycast.record[-1] unless score #v bs.ctx = #f bs.ctx run function bs.raycast:collide/record/slice/left
