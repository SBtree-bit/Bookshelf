execute store result entity @s Pos[0] double 0.001 run scoreboard players add @a[tag=glib.location.set] glib.var0 0
execute store result entity @s Pos[1] double 1 run data get entity @a[tag=glib.location.set,limit=1] Pos[1]
execute at @s run tp @a[tag=glib.location.set] ~ ~ ~
kill @s