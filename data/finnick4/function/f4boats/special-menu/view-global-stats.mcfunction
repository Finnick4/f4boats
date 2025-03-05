
scoreboard players add @s finnick4.boats.stat.menuviews 1
scoreboard players add .global finnick4.boats.stat.menuviews 1


# misc stats

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Started races: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.started"},"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Finished races: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.finished"},"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Total Checkpoints: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.checkpoints"},"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Returns: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.returns"},"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Canceled races: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.canceled"},"color":"light_purple"}]
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Times players visited their stat panel: ","color":"gray"},{"score":{"name":".global","objective":"finnick4.boats.stat.menuviews"},"color":"light_purple"}]


