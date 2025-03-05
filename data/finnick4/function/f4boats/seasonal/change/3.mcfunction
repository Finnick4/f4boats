

# insert und von copy einsetzen
execute store result storage finnick4:boats seasonal[2].time int 1 run scoreboard players get @s finnick4.boats.seasonal.duration
execute store result storage finnick4:boats seasonal[2].sec int 1 run scoreboard players get @s finnick4.boats.seasonal.seconds
execute store result storage finnick4:boats seasonal[2].dec1 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.1
execute store result storage finnick4:boats seasonal[2].dec2 int 1 run scoreboard players get @s finnick4.boats.seasonal.decimal.2


# old 3 -> 4
data modify storage finnick4:boats seasonal[3] merge from storage finnick4:boats.copy seasonal[2]

# old 4 -> 5
data modify storage finnick4:boats seasonal[4] merge from storage finnick4:boats.copy seasonal[3]

# safety copy of 5
data modify storage finnick4:boats seasonal[5] merge from storage finnick4:boats.copy seasonal[4]



# restore previous entries
data modify storage finnick4:boats seasonal[0] merge from storage finnick4:boats.copy seasonal[0]
data modify storage finnick4:boats seasonal[1] merge from storage finnick4:boats.copy seasonal[1]

# set the name
function finnick4:f4boats/seasonal/set-name {n:2}

