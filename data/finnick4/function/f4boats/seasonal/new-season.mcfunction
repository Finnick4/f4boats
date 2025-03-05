function finnick4:f4boats/seasonal/reset-leaderboard
scoreboard players add .global finnick4.boats.season 1
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Started a new season!","color":"gray"}]
