
execute store result score .diffrence finnick4.boats.calc run scoreboard players get @s finnick4.boats.pb.duration
scoreboard players operation .diffrence finnick4.boats.calc -= @s finnick4.boats.time.duration


## Make readable time
# .sec .dec1 .dec2

execute store result score .sec finnick4.boats.calc run scoreboard players get .diffrence finnick4.boats.calc
scoreboard players operation .sec finnick4.boats.calc /= .20 finnick4.boats.calc

# calc decimal point
execute store result score .dec1 finnick4.boats.calc run scoreboard players get .diffrence finnick4.boats.calc
scoreboard players operation .dec1 finnick4.boats.calc %= .20 finnick4.boats.calc
scoreboard players operation .dec1 finnick4.boats.calc /= .2 finnick4.boats.calc


# second decimal point

execute store result score .dec2.dummy finnick4.boats.calc run scoreboard players get .diffrence finnick4.boats.calc
scoreboard players operation .dec2.dummy finnick4.boats.calc %= .20 finnick4.boats.calc
scoreboard players operation .dec2.dummy finnick4.boats.calc %= .2 finnick4.boats.calc

execute if score .dec2.dummy finnick4.boats.calc matches 1 run scoreboard players set .dec2 finnick4.boats.calc 5
execute if score .dec2.dummy finnick4.boats.calc matches 0 run scoreboard players reset .dec2 finnick4.boats.calc
