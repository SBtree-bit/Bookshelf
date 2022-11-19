# This function was automatically generated.

execute as @a[tag=glib.menu.debug.glib.schedule,tag=!glib.menu.active] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.schedule] add glib.menu.active
scoreboard players add @a[tag=glib.menu.debug.glib.schedule] glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.schedule,tag=glib.menu.nextPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.schedule,tag=glib.menu.previousPage] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
execute as @a[tag=glib.menu.debug.glib.schedule,tag=glib.menu.nextPage] run scoreboard players add @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.schedule,tag=glib.menu.previousPage] run scoreboard players remove @s glib.menu.page 1
execute as @a[tag=glib.menu.debug.glib.schedule] if score @s glib.menu.page matches ..-1 run scoreboard players set @s glib.menu.page 0
execute as @a[tag=glib.menu.debug.glib.schedule] if score @s glib.menu.page matches 1.. run scoreboard players set @s glib.menu.page 0
tag @a[tag=glib.menu.debug.glib.schedule] remove glib.menu.nextPage
tag @a[tag=glib.menu.debug.glib.schedule] remove glib.menu.previousPage
execute as @a[tag=glib.menu.debug.glib.schedule,tag=glib.menu.debug] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.schedule] remove glib.menu.debug
tag @a[tag=glib.menu.debug.glib.schedule.close] add glib.menu.debug
execute as @a[tag=glib.menu.debug.glib.schedule.close] run playsound minecraft:item.book.page_turn master @s ~ ~ ~ 2 1 1
tag @a[tag=glib.menu.debug.glib.schedule.close] remove glib.menu.debug.glib.schedule
tag @a[tag=glib.menu.debug.glib.schedule.close] remove glib.menu.debug.glib.schedule.close

tellraw @a[tag=glib.menu.debug.glib.schedule] [{"text": "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]


# Page 1

tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=!glib.debug.glib.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=glib.debug.glib.schedule.cancel_schedule_command] ["", {"text": "   cancel_schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.cancel_schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0}] {"text": "   + child", "color": "gold", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.schedule.child"}, "hoverEvent": {"action": "show_text", "contents": "Click to open the sub-menu"}}
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=!glib.debug.glib.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=glib.debug.glib.schedule.clear_queue] ["", {"text": "   clear_queue: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.clear_queue"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=!glib.debug.glib.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✗", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.debug.glib.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]
tellraw @a[tag=glib.menu.debug.glib.schedule,scores={glib.menu.page = 0},tag=glib.debug.glib.schedule.schedule_command] ["", {"text": "   schedule_command: ", "color": "gray", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}, {"text": "✔", "color": "green", "clickEvent": {"action": "run_command", "value": "/tag @s remove glib.debug.glib.schedule.schedule_command"}, "hoverEvent": {"action": "show_text", "contents": "Click to change the value"}}]

tellraw @a[tag=glib.menu.debug.glib.schedule] [{"text": "\n"}, {"text": " < ", "color": "red", "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}, {"text": "Glib Menu / Debug / glib.schedule", "color": "dark_aqua", "underlined": true, "bold": true, "clickEvent": {"action": "run_command", "value": "/tag @s add glib.menu.debug.glib.schedule.close"}, "hoverEvent": {"action": "show_text", "contents": "Go back"}}]