#__________________________________________________
# INFO     Copyright � 2020 Gunivers.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.16.X
# Last check: 1.16.2

# Original path: bs.math:bitwise/xor
# Documentation: https://bookshelf.docs.gunivers.net//Functions#Bitwise
# Parallelizable: true
# Note:
# - This function returns the exclusive or bitwise between the two numbers.
# - Example: -178 ^ 32165 = -32021
# The result is the number composed by putting one at all bits where the value in the two binary representations of these numbers is different.
# If an input is negative, it is replaced by its two's complement
# 6 ^ 10 <=> 0b0110 ^ 0b1010
#    0110
#  ^ 1010
#    ----
#	 1100
#__________________________________________________
# PARAMETERS

# Input: @s bs.in.0 (score): first value
# Input: @s bs.in.1 (score): second value
# Output: @s bs.out.0 (score): the exclusive or bitwise between the two values (var0 ^ var1)

#__________________________________________________
# INIT










#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

execute if score @s bs.in.0 matches ..-1 unless score @s bs.in.1 matches ..-1 run tag @s add bs.bitwise.xor.negative_operors
execute if score @s bs.in.1 matches ..-1 unless score @s bs.in.0 matches ..-1 run tag @s add bs.bitwise.xor.negative_operors

scoreboard players operation @s bs.in.5 = @s bs.in.0
scoreboard players operation @s bs.in.6 = @s bs.in.1

execute if score @s bs.in.0 matches ..-1 run function bs.bitwise:two_complement
execute if score @s bs.in.5 matches ..-1 run scoreboard players operation @s bs.in.0 = @s bs.out.0

execute if score @s bs.in.1 matches ..-1 run scoreboard players operation @s bs.in.0 >< @s bs.in.1
execute if score @s bs.in.0 matches ..-1 run function bs.bitwise:two_complement
execute if score @s bs.in.0 matches ..-1 run scoreboard players operation @s bs.in.0 = @s bs.out.0

execute if score @s bs.in.1 < @s bs.in.0 run scoreboard players operation @s bs.in.0 >< @s bs.in.1

scoreboard players set @s bs.out.0 0
scoreboard players set @s bs.in.2 1

function bs.bitwise:xor/child/loop

execute if entity @s[tag=bs.bitwise.xor.negative_operors] run scoreboard players operation @s bs.in.0 = @s bs.out.0
execute if entity @s[tag=bs.bitwise.xor.negative_operors] run function bs.bitwise:two_complement
execute if entity @s[tag=bs.bitwise.xor.negative_operors] run scoreboard players operation @s bs.out.0 *= -1 bs.const

tag @s remove bs.bitwise.xor.negative_operors

scoreboard players operation @s bs.in.0 = @s bs.in.5
scoreboard players operation @s bs.in.1 = @s bs.in.6