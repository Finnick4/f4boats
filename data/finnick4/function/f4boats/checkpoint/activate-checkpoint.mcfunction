##
 # activate-checkpoint.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

say the checkpoint matches the current checkpoint!

scoreboard players add @s finnick4.boats.checkpoint 1


execute if score @s finnick4.boats.checkpoint = .length finnick4.boats.checkpoint run function finnick4:f4boats/checkpoint/finnish-race

tag @s remove finnick4.f4boats.reached-checkpoint
