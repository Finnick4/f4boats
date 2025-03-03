title @s title {"text":""}
title @s subtitle {"text":"Canceled the race","color":"red"}
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" The current race ","color":"gray"},{"text":"was canceled","color":"red"},{"text":"!","color":"gray"}]

scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race

execute at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 1

scoreboard players add @s finnick4.boats.stat.canceled 1
scoreboard players add .global finnick4.boats.stat.canceled 1

