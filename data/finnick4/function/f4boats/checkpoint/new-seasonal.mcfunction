
execute if score @s finnick4.boats.seasonal.duration = @s finnick4.boats.time.duration run return fail


tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" This is a new seasonal record for ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" The previous record was ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.seconds"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.decimal.1"},"color":"red"},{"score":{"name":"@s","objective":"finnick4.boats.seasonal.decimal.2"},"color":"red"},{"text":" seconds!","color":"gray"}]

function finnick4:f4boats/checkpoint/set-seasonal

