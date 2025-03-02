##
 # started-race.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

scoreboard players set @s finnick4.boats.checkpoint 0
tag @s add finnick4.f4boats.race

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" You ","color":"gray"},{"text":"started the race","color":"gold"},{"text":"! Time starts now!","color":"gray"}]
title @s subtitle {"text":"Let's go! Good luck!","bold":true,"color":"gold"}
title @s title {"text":""}

execute as @s at @s run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 100 2
execute as @s at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 100 0.4

function finnick4:f4boats/setup/internal/calculate-length

execute store result score @s finnick4.boats.time.start run time query gametime

