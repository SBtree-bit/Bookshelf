execute if score @s bs.itemId matches 462 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_concrete_powder","Count":1b}}
execute if score @s bs.itemId matches 463 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_dye","Count":1b}}
execute if score @s bs.itemId matches 464 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_glazed_terracotta","Count":1b}}
execute if score @s bs.itemId matches 465 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_shulker_box","Count":1b}}
execute if score @s bs.itemId matches 466 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_stained_glass","Count":1b}}
execute if score @s bs.itemId matches 467 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:green_stained_glass_pane","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
