execute if score @s bs.itemId matches 334 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diorite_slab","Count":1b}}
execute if score @s bs.itemId matches 335 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diorite_stairs","Count":1b}}
execute if score @s bs.itemId matches 336 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:diorite_wall","Count":1b}}
execute if score @s bs.itemId matches 337 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dirt","Count":1b}}
execute if score @s bs.itemId matches 338 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:dirt_path","Count":1b}}
execute if score @s bs.itemId matches 339 run summon item ~ ~ ~ {PickupDelay:999999,Tags:["bs.new"],"Item":{"id":"minecraft:disc_fragment_5","Count":1b}}
scoreboard players operation @e[type=item,tag=bs.new,limit=1,sort=nearest] bs.parentId = @s bs.id
