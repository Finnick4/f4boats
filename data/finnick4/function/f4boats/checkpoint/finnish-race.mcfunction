
function finnick4:f4boats/timer/calculate-length-till-now
function finnick4:f4boats/timer/calculate-seconds

title @s subtitle ["",{"text":"Your time is ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":" seconds!","color":"gray"}]
title @s title {"text":"You are finished!","bold":true,"color":"gold"}

execute as @s at @s run playsound minecraft:item.goat_horn.sound.0 master @a ~ ~ ~ 100 1.5
execute as @s at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 100 1.2

scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race
