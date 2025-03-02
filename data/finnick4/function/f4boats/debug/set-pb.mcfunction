function pdb:get_me

$scoreboard players set @s finnick4.boats.time.duration $(dur)
function finnick4:f4boats/timer/calculate-seconds

execute store result storage pdb:main in.PB[0] int 1 run scoreboard players get @s finnick4.boats.time.duration
execute store result storage pdb:main in.PB[1] int 1 run scoreboard players get @s finnick4.boats.time.seconds
execute store result storage pdb:main in.PB[2] int 1 run scoreboard players get @s finnick4.boats.time.decimal.1
execute store result storage pdb:main in.PB[3] int 1 run scoreboard players get @s finnick4.boats.time.decimal.2

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Your ","color":"gray"},{"text":" new PB","color":"yellow"},{"text":" is: ","color":"gray"},{"color":"aqua","nbt":"in.PB[1]","storage":"pdb:main"},{"text":".","color":"aqua"},{"color":"aqua","nbt":"in.PB[2]","storage":"pdb:main"},{"color":"aqua","nbt":"in.PB[3]","storage":"pdb:main"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]

function pdb:save_me
