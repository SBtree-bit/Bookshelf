execute if score @s bs.itemId matches 398 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:flowering_azalea_leaves","Count":1b}}
execute if score @s bs.itemId matches 399 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:fox_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 400 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:frog_spawn_egg","Count":1b}}
execute if score @s bs.itemId matches 401 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:frogspawn","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
