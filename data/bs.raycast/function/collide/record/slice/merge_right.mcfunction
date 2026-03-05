execute store result score #x bs.ctx run data get storage bs:data raycast.record[-1].tmin
execute store result score #n bs.ctx run data get storage bs:data raycast.record[-1].norm
data remove storage bs:data raycast.record[-1]
