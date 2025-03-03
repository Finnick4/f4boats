
function finnick4:f4boats/timer/calculate-length-till-now
function finnick4:f4boats/timer/calculate-seconds

title @s subtitle ["",{"text":"Your time is ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.2"},"color":"aqua"},{"text":" seconds!","color":"gray"}]
title @s title {"text":"You have finished!","bold":true,"color":"gold"}


# Check for PB
execute unless score @s finnick4.boats.pb.duration >= @s finnick4.boats.time.duration run function finnick4:f4boats/checkpoint/no-pb
execute if score @s finnick4.boats.pb.duration >= @s finnick4.boats.time.duration run function finnick4:f4boats/checkpoint/new-pb

# check if there is no PB => first round
execute unless score @s finnick4.boats.pb.duration matches 1.. run function finnick4:f4boats/checkpoint/first-round

function finnick4:f4boats/checkpoint/set-latest

execute as @s at @s run playsound minecraft:item.goat_horn.sound.0 master @s ~ ~ ~ 100 1.5
execute as @s at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 1.2


scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race

scoreboard players add @s finnick4.boats.stat.finished 1
scoreboard players add .global finnick4.boats.stat.finished 1
