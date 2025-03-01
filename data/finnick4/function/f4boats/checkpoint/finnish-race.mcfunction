say the race is over!!!

function finnick4:f4boats/timer/calculate-length-till-now
tellraw @a ["",{"text":"You time in ticks is: "},{"score":{"name":"@s","objective":"finnick4.boats.time.duration"}}]

scoreboard players reset @s finnick4.boats.checkpoint
tag @s remove finnick4.f4boats.race
