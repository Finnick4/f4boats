
# specialised
execute if score @s iceboat matches 101 run function finnick4:f4boats/trigger-menu/get-stats
execute if score @s iceboat matches 102 run function finnick4:f4boats/trigger-menu/online-pbs
execute if score @s iceboat matches 103 run function finnick4:f4boats/trigger-menu/leaderboard
execute if score @s iceboat matches 104 run function finnick4:f4boats/trigger-menu/start
execute if score @s iceboat matches 105 run function finnick4:f4boats/trigger-menu/credits

execute unless score @s iceboat matches 101..105 run function finnick4:f4boats/trigger-menu/generic

scoreboard players set @s iceboat 0


