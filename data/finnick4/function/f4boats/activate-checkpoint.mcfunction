##
 # activate-checkpoint.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

say the checkpoint matches the current checkpoint!
$scoreboard players set @s finnick4.boats.checkpoint $(checkpointNumber)


execute if score @s finnick4.boats.checkpoint = .length finnick4.boats.checkpoint run function finnick4:f4boats/finnish-race

tag @s remove finnick4.f4boats.reached-checkpoint
