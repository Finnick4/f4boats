
# safety copy of 5
data modify storage finnick4:boats seasonal[5] merge from storage finnick4:boats.copy seasonal[4]


# insert und von copy einsetzen
execute store result storage finnick4:boats seasonal[4].time int 1 run scoreboard players get @s finnick4.boats.seasonal.duration
execute store result storage finnick4:boats seasonal[4].sec int 1 run scoreboard players get @s finnick4.boats.seasonal.seconds
execute store result storage finnick4:boats seasonal[4].dec1 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.1
execute store result storage finnick4:boats seasonal[4].dec2 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.2



data modify storage finnick4:boats seasonal[0] merge from storage finnick4:boats.copy seasonal[0]
data modify storage finnick4:boats seasonal[1] merge from storage finnick4:boats.copy seasonal[1]
data modify storage finnick4:boats seasonal[2] merge from storage finnick4:boats.copy seasonal[2]
data modify storage finnick4:boats seasonal[3] merge from storage finnick4:boats.copy seasonal[3]


# set the name
function finnick4:f4boats/seasonal/set-name {n:4}

