
# print old pb
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" You got a","color":"gray"},{"text":" new PB!","color":"yellow"},{"text":" Your previous PB was ","color":"gray"},{"color":"aqua","nbt":"out.PB[1]","storage":"pdb:main"},{"text":".","color":"aqua"},{"color":"aqua","nbt":"out.PB[2]","storage":"pdb:main"},{"color":"aqua","nbt":"out.PB[3]","storage":"pdb:main"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]

execute store result storage pdb:main in.PB[0] int 1 run scoreboard players get @s finnick4.boats.time.duration
execute store result storage pdb:main in.PB[1] int 1 run scoreboard players get @s finnick4.boats.time.seconds
execute store result storage pdb:main in.PB[2] byte 1 run scoreboard players get @s finnick4.boats.time.decimal.1
execute store result storage pdb:main in.PB[3] byte 1 run scoreboard players get @s finnick4.boats.time.decimal.2

function pdb:save_me