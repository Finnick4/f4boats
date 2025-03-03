
scoreboard players add @s finnick4.boats.stat.menuviews 1
scoreboard players add .global finnick4.boats.stat.menuviews 1

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Your ","color":"gray"},{"text":"current record","color":"yellow"},{"text":" is: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.pb.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Your ","color":"gray"},{"text":"latest time","color":"yellow"},{"text":" was: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.latest.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.latest.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.latest.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]

# misc stats
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]\n[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Miscellaneous statistics","color":"gray"}]

tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Started races: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.started"},"color":"light_purple"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Finished races: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.finished"},"color":"light_purple"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Canceled races: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.canceled"},"color":"light_purple"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Total Checkpoints: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.checkpoints"},"color":"light_purple"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Returns: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.returns"},"color":"light_purple"}]
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Times you visited this panel: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.stat.menuviews"},"color":"light_purple"}]


