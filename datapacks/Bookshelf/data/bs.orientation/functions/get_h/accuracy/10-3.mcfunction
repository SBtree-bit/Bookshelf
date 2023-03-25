#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: theogiraudet
# Contributors:
# MC Version: 1.13
# Last check: 1.16.1

# Original path: bs.orientation:get_h/accuracy/10-3
# Parallelizable: true
# Note: It was excessively more impressive in 1.12 ...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.ori.h dummy [{"text":"Bookshelf ","color":"dark_gray"},{"text":"Orientation H","color":"aqua"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE
function bs.core:entity/summon

execute store result score @s bs.ori.h run data get entity @e[tag=bs.new,limit=1,sort=nearest] Rotation[0] 1000

execute as @e[tag=bs.new] run function bs.core:entity/safe_kill