execute store result score #f bs.ctx run data get storage bs:ctx x
execute unless score #f bs.ctx matches 0 run function bs.math:frexp/e_pos/split
execute unless score #f bs.ctx matches 0 run function bs.math:frexp/e_pos/chunk
execute if score #f bs.ctx matches 0 run function bs.math:frexp/e_neg
