#__________________________________________________
# INFO     Copyright © 2021 Altearn.

# Authors: Leirof
# Contributors:
# MC Version: 1.13
# Last check:

# Original path: bs.location:get_x/accuracy/10-3
# Documentation: https://glib-core.readthedocs.io//entity#location
# Parallelizable: <true/false/global>
# Note: It was excessively more impressive in 1.12...

#__________________________________________________
# PARAMETERS

#__________________________________________________
# INIT

scoreboard objectives add bs.locX dummy [{"text":"GLib ","color":"gold"},{"text":"Location X","color":"dark_gray"}]

#__________________________________________________
# CONFIG

#__________________________________________________
# CODE

function bs.core:default_entity

execute store result score @s bs.locX run data get entity @e[tag=bs.new,limit=1,sort=nearest] Pos[0] 1000
