

execute if score .lblen finnick4.boats.calc matches ..4 run function finnick4:f4boats/leaderboard/add-pb

execute store result score .lb.5 finnick4.boats.calc run data get storage finnick4:boats scores[4].time
execute if score .lblen finnick4.boats.calc matches 5 if score @s finnick4.boats.pb.duration < .lb.5 finnick4.boats.calc run function finnick4:f4boats/leaderboard/add-pb


