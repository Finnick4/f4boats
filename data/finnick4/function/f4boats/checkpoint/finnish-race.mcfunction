
function finnick4:f4boats/timer/calculate-length-till-now
function finnick4:f4boats/timer/calculate-seconds

title @s subtitle ["",{"text":"Your time is ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":" seconds!","color":"gray"}]
title @s title {"text":"You are finished!","bold":true,"color":"gold"}

scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race
