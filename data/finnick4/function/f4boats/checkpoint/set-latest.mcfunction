
data modify storage pdb:main in set value {Latest:[0, 0, 0, 0]}

execute store result storage pdb:main in.Latest[0] int 1 run scoreboard players get @s finnick4.boats.time.duration
execute store result storage pdb:main in.Latest[1] int 1 run scoreboard players get @s finnick4.boats.time.seconds
execute store result storage pdb:main in.Latest[2] int 1 run scoreboard players get @s finnick4.boats.time.decimal.1
execute store result storage pdb:main in.Latest[3] int 1 run scoreboard players get @s finnick4.boats.time.decimal.2

function pdb:save_me