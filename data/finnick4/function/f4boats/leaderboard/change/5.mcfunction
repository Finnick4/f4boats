
# safety copy of 5
data modify storage finnick4:boats scores[5] merge from storage finnick4:boats.copy scores[4]


# insert und von copy einsetzen
execute store result storage finnick4:boats scores[4].time int 1 run scoreboard players get @s finnick4.boats.pb.duration
execute store result storage finnick4:boats scores[4].sec int 1 run scoreboard players get @s finnick4.boats.pb.seconds
execute store result storage finnick4:boats scores[4].dec1 int 1 run scoreboard players get @s finnick4.boats.pb.decimal.1
execute store result storage finnick4:boats scores[4].dec2 int 1 run scoreboard players get @s finnick4.boats.pb.decimal.2



data modify storage finnick4:boats scores[0] merge from storage finnick4:boats.copy scores[0]
data modify storage finnick4:boats scores[1] merge from storage finnick4:boats.copy scores[1]
data modify storage finnick4:boats scores[2] merge from storage finnick4:boats.copy scores[2]
data modify storage finnick4:boats scores[3] merge from storage finnick4:boats.copy scores[3]


# set the name
function finnick4:f4boats/leaderboard/set-name {n:4}

