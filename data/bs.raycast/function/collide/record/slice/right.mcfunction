execute store result score #u bs.ctx run data get storage bs:data raycast.record[-1].tmax
execute store result score #v bs.ctx run data get storage bs:data raycast.record[-1].flag
execute if score #v bs.ctx = #f bs.ctx if score #x bs.ctx <= #u bs.ctx run return run function bs.raycast:collide/record/slice/merge_right
data modify storage bs:ctx _.right prepend from storage bs:data raycast.record[-1]
data remove storage bs:data raycast.record[-1]
execute store result score #u bs.ctx run data get storage bs:data raycast.record[-1].tmin
execute if data storage bs:data raycast.record[-1] if score #x bs.ctx > #u bs.ctx run function bs.raycast:collide/record/slice/right
