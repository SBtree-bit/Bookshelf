# Callback is run as the targeted entity
# @batch bs.view
# @dummy

summon minecraft:armor_stand ~.5 ~ ~1.5 {Tags:["bs.raycast.is_solid"],NoGravity:1b}
function #bs.view:as_aimed_entity {run:"tag @s add found"}
assert entity @e[type=minecraft:armor_stand,tag=found] inside
