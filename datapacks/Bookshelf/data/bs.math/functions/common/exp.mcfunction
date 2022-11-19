#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: KubbyDev
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.math:exp
# Documentation: https://glib-core.readthedocs.io//math
# Parallelizable: <true/false/global>
# Note:
# - bs.var0 is the input of the function, multiplied by 100 to allow 2 digits (input 123 to calculate exp(1.23))
# - bs.res0 is multiplied by 1000 to allow 3 digits, but the function has a 3 digits accuracy only around 0
# - bs.var0 must be in interval ]-6 *100; 12 *100]
# - Thanks to this page for the formula used in this function https://pages.mtu.edu/~shene/COURSES/cs201/NOTES/chap04/exp.html

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT






#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

scoreboard players set @s bs.res0 1000
scoreboard players operation @s bs.var2 = @s bs.var0
scoreboard players operation @s bs.var2 *= 10 bs.const
scoreboard players set @s bs.var1 1

function bs.math:common/exp/child/exp
