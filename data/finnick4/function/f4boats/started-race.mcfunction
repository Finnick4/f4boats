##
 # started-race.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

scoreboard players set @s finnick4.boats.checkpoint 0
tag @s add finnick4.f4boats.race

say I started the race! 

function finnick4:f4boats/setup/internal/calculate-length

execute store result score @s finnick4.boats.time.start run time query gametime

