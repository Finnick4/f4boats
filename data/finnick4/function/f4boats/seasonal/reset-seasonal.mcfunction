

tellraw @s[scores={finnick4.boats.seasonal.duration=0..}] ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Your final entry for ","color":"gray"},{"text":"season ","color":"dark_purple"},{"score":{"name":"@s","objective":"finnick4.boats.season"},"color":"dark_purple"},{"text":" was: ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]
tellraw @s[scores={finnick4.boats.seasonal.duration=0..}] ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" As ","color":"gray"},{"text":"season ","color":"blue"},{"score":{"name":".global","objective":"finnick4.boats.season"},"color":"blue"},{"text":" has commenced","color":"blue"},{"text":", your previous entry from ","color":"gray"},{"text":"season ","color":"red"},{"score":{"name":"@s","objective":"finnick4.boats.season"},"color":"red"},{"text":" have been ","color":"gray"},{"text":"removed","color":"red"},{"text":". ","color":"gray"},{"text":"Have fun participating in the new season","color":"gold"},{"text":"!","color":"gray"}]

execute store result score @s finnick4.boats.season run scoreboard players get .global finnick4.boats.season


scoreboard players reset @s finnick4.boats.seasonal.seconds
scoreboard players reset @s finnick4.boats.seasonal.decimal.1
scoreboard players reset @s finnick4.boats.seasonal.decimal.2
scoreboard players reset @s finnick4.boats.seasonal.duration


