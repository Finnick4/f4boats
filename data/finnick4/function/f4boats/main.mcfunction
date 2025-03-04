##
 # main.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

execute as @a[tag=finnick4.f4boats.race] run function finnick4:f4boats/on-racers

scoreboard players enable @a iceboat
execute as @a[scores={iceboat=1..}] at @s run function finnick4:f4boats/triggered
