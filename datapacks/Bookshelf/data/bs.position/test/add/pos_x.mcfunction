# Position is added correctly
# @batch bs.position
# @dummy

tp @s 0.0 0.0 0.0 0.0 0.0

execute store result score @s bs.pos.x run random value -10000..10000
function #bs.position:add_pos_x {scale:.001}
execute store result score #x bs.ctx run data get entity @s Pos[0] 1000
scoreboard players operation #x bs.ctx -= @s bs.pos.x

assert score #x bs.ctx matches -2..2
