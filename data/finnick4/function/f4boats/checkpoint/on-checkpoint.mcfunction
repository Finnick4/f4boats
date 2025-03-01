
tag @s add finnick4.f4boats.reached-checkpoint

# check if this is current checkpoint
execute store result score .checkpointcalc finnick4.boats.calc run scoreboard players get @s finnick4.boats.checkpoint

execute as @e[type=marker, tag=f4boats.checkpoint, distance=..20,limit=1 ,sort=nearest] if score @s finnick4.boats.checkpoint = .checkpointcalc finnick4.boats.calc as @a[tag=finnick4.f4boats.reached-checkpoint] run function finnick4:f4boats/checkpoint/same-checkpoint
execute unless entity @s[tag=finnick4.f4boats.reached-checkpoint] run return fail

# check if this is the next checkpoint
scoreboard players add .checkpointcalc finnick4.boats.calc 1

execute as @e[type=marker, tag=f4boats.checkpoint, distance=..20,limit=1 ,sort=nearest] if score @s finnick4.boats.checkpoint = .checkpointcalc finnick4.boats.calc as @a[tag=finnick4.f4boats.reached-checkpoint] run function finnick4:f4boats/checkpoint/activate-checkpoint
execute unless entity @s[tag=finnick4.f4boats.reached-checkpoint] run return fail

# if neither

say this is neiter
function finnick4:f4boats/checkpoint/incorrect-checkpoint
tag @s remove finnick4.f4boats.reached-checkpoint
