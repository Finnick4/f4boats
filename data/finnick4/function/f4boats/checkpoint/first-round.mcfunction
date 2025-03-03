tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" This is the ","color":"gray"},{"text":"first time","color":"light_purple"},{"text":" ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" played this race!","color":"gray"}]

execute store result score @s finnick4.boats.pb.duration run scoreboard players get @s finnick4.boats.time.duration
execute store result score @s finnick4.boats.pb.seconds run scoreboard players get @s finnick4.boats.time.seconds
execute store result score @s finnick4.boats.pb.decimal.1 run scoreboard players get @s finnick4.boats.time.decimal.1
execute store result score @s finnick4.boats.pb.decimal.2 run scoreboard players get @s finnick4.boats.time.decimal.2

