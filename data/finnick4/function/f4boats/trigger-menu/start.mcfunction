
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1

execute unless data entity @s RootVehicle run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" To start, you have to be ","color":"gray"},{"text":"seated in a boat","color":"red"},{"text":"!","color":"gray"}]
execute unless data entity @s RootVehicle run return fail

scoreboard players set @s finnick4.boats.checkpoint -1

scoreboard players add @s finnick4.boats.stat.started 1
scoreboard players add .global finnick4.boats.stat.started 1

tag @s add finnick4.f4boats.race
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" To ","color":"gray"},{"text":"start the race","color":"green"},{"text":", head over the ","color":"gray"},{"text":"start checkpoint","color":"gold"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" If you ","color":"gray"},{"text":"leave the boat","color":"red"},{"text":", the race ","color":"gray"},{"text":"will be canceled","color":"dark_red"},{"text":".","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Hint","italic":true,"color":"yellow"},{"text":": If you don't know the course, the next checkpoint has ","italic":true,"color":"gray"},{"text":"golden particles","italic":true,"color":"gold"},{"text":"!","italic":true,"color":"gray"}]

