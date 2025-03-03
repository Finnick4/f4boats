
function finnick4:f4boats/timer/calculate-length-till-now
function finnick4:f4boats/timer/calculate-seconds

title @s subtitle ["",{"text":"Your time is ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.2"},"color":"aqua"},{"text":" seconds!","color":"gray"}]
title @s title {"text":"You are finished!","bold":true,"color":"gold"}
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" finished the race","color":"yellow"},{"text":" with a time of ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]

execute as @s at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 100 1.5
execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1.2

# Check for PB
execute if score @s finnick4.boats.pb.duration >= @s finnick4.boats.time.duration run function finnick4:f4boats/checkpoint/new-pb


scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race
