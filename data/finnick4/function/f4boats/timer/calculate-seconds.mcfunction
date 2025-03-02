
execute store result score @s finnick4.boats.time.seconds run scoreboard players get @s finnick4.boats.time.duration
scoreboard players operation @s finnick4.boats.time.seconds /= .20 finnick4.boats.calc

# calc decimal point
execute store result score @s finnick4.boats.time.decimal.1 run scoreboard players get @s finnick4.boats.time.duration
scoreboard players operation @s finnick4.boats.time.decimal.1 %= .20 finnick4.boats.calc
scoreboard players operation @s finnick4.boats.time.decimal.1 /= .2 finnick4.boats.calc

# second decimal point

execute store result score @s finnick4.boats.calc run scoreboard players get @s finnick4.boats.time.duration
scoreboard players operation @s finnick4.boats.calc %= .20 finnick4.boats.calc
scoreboard players operation @s finnick4.boats.calc %= .2 finnick4.boats.calc

execute if score @s finnick4.boats.calc matches 1 run scoreboard players set @s finnick4.boats.time.decimal.2 5
execute if score @s finnick4.boats.calc matches 0 run scoreboard players reset @s finnick4.boats.time.decimal.2

