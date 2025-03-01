##
 # activate-checkpoint.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

say the checkpoint matches the current checkpoint!
#$scoreboard players set @s finnick4.boats.checkpoint $(checkpointNumber)

scoreboard players add @s finnick4.boats.checkpoint 1
#execute store result score @s finnick4.boats.checkpoint run scoreboard players get @e[tag=f4boats.checkpoint, distance=..20,limit=1 ,sort=nearest] finnick4.boats.checkpoint
# @a[tag=finnick4.f4boats.reached-checkpoint,limit=1,sort=nearest]


execute if score @s finnick4.boats.checkpoint = .length finnick4.boats.checkpoint run function finnick4:f4boats/checkpoint/finnish-race

tag @s remove finnick4.f4boats.reached-checkpoint
