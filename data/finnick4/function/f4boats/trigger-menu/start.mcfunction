
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1
say TODO | New start

execute unless data entity @s RootVehicle run say you need to be in a boat to start!
execute unless data entity @s RootVehicle run return fail

scoreboard players set @s finnick4.boats.checkpoint -1

scoreboard players add @s finnick4.boats.stat.started 1
scoreboard players add .global finnick4.boats.stat.started 1

tag @s add finnick4.f4boats.race
say to start the timer and the race, head over the starting checkpoint
