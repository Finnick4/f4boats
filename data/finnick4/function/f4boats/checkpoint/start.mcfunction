scoreboard players set @s finnick4.boats.checkpoint 0

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" You ","color":"gray"},{"text":"started the race","color":"gold"},{"text":"! Time starts now!","color":"gray"}]
title @s subtitle {"text":"Let's go! Good luck!","bold":true,"color":"gold"}
title @s title {"text":""}

execute as @s at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 100 2
execute as @s at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~ 100 0.4



execute store result score @s finnick4.boats.time.start run time query gametime

# check for better together advancement
scoreboard players set .players finnick4.boats.calc 0
execute as @a[tag=finnick4.f4boats.race] run scoreboard players add .players finnick4.boats.calc 1
execute if score .players finnick4.boats.calc matches 2.. run advancement grant @a[tag=finnick4.f4boats.race] only finnick4:boats/together

tag @s remove finnick4.f4boats.reached-checkpoint

advancement grant @s only finnick4:boats/root

