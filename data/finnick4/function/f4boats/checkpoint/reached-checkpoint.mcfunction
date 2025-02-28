##
 # reachedCheckpoint.mcfunction
 # f4boats
 #
 # Created by Finnick4.
 # 
 # To call this function, use:
 # function finnick4:f4boats/reached-checkpoint {"checkpointNumber":4}
 #
 # Execute this function as the player!!!
##

tag @s add finnick4.f4boats.reached-checkpoint

$say Debug | I just reached checkpoint (n = $(checkpointNumber))

execute unless entity @s[tag=finnick4.f4boats.race] run function finnick4:f4boats/checkpoint/not-part-of-race
execute unless entity @s[tag=finnick4.f4boats.race] run return fail

$execute if score @s finnick4.boats.checkpoint matches $(checkpointNumber) run function finnick4:f4boats/checkpoint/activate-checkpoint {"checkpointNumber":$(checkpointNumber)}
execute unless entity @s[tag=finnick4.f4boats.reached-checkpoint] run return fail

# check for previous checkpoint
$scoreboard players set .checkpointcalc finnick4.boats.calc $(checkpointNumber)
scoreboard players remove .checkpointcalc finnick4.boats.calc 1
$execute if score @s finnick4.boats.checkpoint = .checkpointcalc finnick4.boats.calc run function finnick4:f4boats/checkpoint/activate-checkpoint {"checkpointNumber":$(checkpointNumber)}
execute unless entity @s[tag=finnick4.f4boats.reached-checkpoint] run return fail


function finnick4:f4boats/checkpoint/incorrect-checkpoint

tag @s remove finnick4.f4boats.reached-checkpoint

