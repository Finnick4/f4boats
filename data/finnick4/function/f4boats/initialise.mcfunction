execute if score .been_initialised finnick4.boats.calc matches 1 run return fail

function finnick4:f4boats/leaderboard/reset-leaderboard
function finnick4:f4boats/seasonal/reset-leaderboard
function finnick4:f4boats/seasonal/new-season
scoreboard players set .length finnick4.boats.checkpoint -1

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"Initialised the datapack!","color":"gray"}]

scoreboard players set .been_initialised finnick4.boats.calc 1


