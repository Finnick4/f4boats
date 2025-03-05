$say summoned a checkpoint entity with n = $(n) 

execute unless score .been_initialised finnick4.boats.calc matches 1 run function finnick4:f4boats/leaderboard/reset-leaderboard
execute unless score .been_initialised finnick4.boats.calc matches 1 run scoreboard players set .been_initialised finnick4.boats.calc 1

summon marker ~ ~ ~ {Tags:["f4boats.checkpoint","f4boats.checkpoint.summoned"]}

$execute as @e[type=marker, tag=f4boats.checkpoint.summoned] run function finnick4:f4boats/setup/internal/checkpoint-marker {n:$(n)}
