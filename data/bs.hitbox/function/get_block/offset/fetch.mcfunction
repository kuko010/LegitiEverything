$execute store success score #s bs.ctx run data modify storage bs:out hitbox.offset set from storage bs:data hitbox.offsets[{k:[$(x),$(z)]}]
data remove storage bs:out hitbox.offset.k
