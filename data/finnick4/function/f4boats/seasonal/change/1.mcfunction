
# insert und von copy einsetzen (1, 2, 3, 4) und fail
execute store result storage finnick4:boats seasonal[0].time int 1 run scoreboard players get @s finnick4.boats.seasonal.duration
execute store result storage finnick4:boats seasonal[0].sec int 1 run scoreboard players get @s finnick4.boats.seasonal.seconds
execute store result storage finnick4:boats seasonal[0].dec1 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.1
execute store result storage finnick4:boats seasonal[0].dec2 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.2

# old 1 -> 2
data modify storage finnick4:boats seasonal[1] merge from storage finnick4:boats.copy seasonal[0]

# old 2 -> 3
data modify storage finnick4:boats seasonal[2] merge from storage finnick4:boats.copy seasonal[1]

# old 3 -> 4
data modify storage finnick4:boats seasonal[3] merge from storage finnick4:boats.copy seasonal[2]

# old 4 -> 5
data modify storage finnick4:boats seasonal[4] merge from storage finnick4:boats.copy seasonal[3]

# safety copy of 5
data modify storage finnick4:boats seasonal[5] merge from storage finnick4:boats.copy seasonal[4]


# set the name
function finnick4:f4boats/seasonal/set-name {n:0}