# This file was automatically generated, do not edit it
execute if block ~ ~ ~ #bs.block:has_state[facing=north] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"north"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=south] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"south"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=west] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"west"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[facing=east] run data modify storage bs:out block.iterable_properties[{name:"facing"}].options[{value:"east"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=false] run data modify storage bs:out block.iterable_properties[{name:"occupied"}].options[{value:"false"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[occupied=true] run data modify storage bs:out block.iterable_properties[{name:"occupied"}].options[{value:"true"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=foot] run data modify storage bs:out block.iterable_properties[{name:"part"}].options[{value:"foot"}].selected set value 1b
execute if block ~ ~ ~ #bs.block:has_state[part=head] run data modify storage bs:out block.iterable_properties[{name:"part"}].options[{value:"head"}].selected set value 1b