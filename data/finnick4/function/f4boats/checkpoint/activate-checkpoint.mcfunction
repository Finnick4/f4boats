##
 # activate-checkpoint.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##



scoreboard players add @s finnick4.boats.checkpoint 1

title @s subtitle {"text":"New checkpoint!","color":"yellow"}
title @s title {"text":""}

execute if score @s finnick4.boats.checkpoint = .length finnick4.boats.checkpoint run function finnick4:f4boats/checkpoint/finnish-race

function finnick4:f4boats/timer/calculate-seconds
execute if entity @s[tag=finnick4.f4boats.race] run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" You have reached ","color":"gray"},{"text":"checkpoint ","color":"yellow"},{"score":{"name":"@s","objective":"finnick4.boats.checkpoint"},"color":"yellow"},{"text":" out of ","color":"yellow"},{"score":{"name":".length","objective":"finnick4.boats.checkpoint"},"color":"yellow"},{"text":". Your current time is ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"}]
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7

tag @s remove finnick4.f4boats.reached-checkpoint

scoreboard players add @s finnick4.boats.stat.checkpoints 1
scoreboard players add .global finnick4.boats.stat.checkpoints 1

