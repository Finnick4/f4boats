tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" You got a","color":"gray"},{"text":" new PB!","color":"yellow"},{"text":" Your previous PB was ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.pb.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]


execute store result score @s finnick4.boats.pb.duration run scoreboard players get @s finnick4.boats.time.duration
execute store result score @s finnick4.boats.pb.seconds run scoreboard players get @s finnick4.boats.time.seconds
execute store result score @s finnick4.boats.pb.decimal.1 run scoreboard players get @s finnick4.boats.time.decimal.1
execute store result score @s finnick4.boats.pb.decimal.2 run scoreboard players get @s finnick4.boats.time.decimal.2