say On Checkpoint!

#execute as @e[type=marker, tag=f4boats.checkpoint, distance=..20,limit=1 ,sort=nearest] if score @s finnick4.boats.checkpoint matches 1 run say yes

execute store result score .checkpointcalc finnick4.boats.calc run scoreboard players get @s finnick4.boats.checkpoint
scoreboard players add .checkpointcalc finnick4.boats.calc 1

tag @s add finnick4.f4boats.reached-checkpoint
execute as @e[type=marker, tag=f4boats.checkpoint, distance=..20,limit=1 ,sort=nearest] if score @s finnick4.boats.checkpoint = .checkpointcalc finnick4.boats.calc as @a[tag=finnick4.f4boats.reached-checkpoint] run function finnick4:f4boats/checkpoint/activate-checkpoint
tag @s remove finnick4.f4boats.reached-checkpoint
# @a[tag=finnick4.f4boats.reached-checkpoint,limit=1,sort=nearest]

#$execute if score @s finnick4.boats.checkpoint = .checkpointcalc finnick4.boats.calc run function finnick4:f4boats/checkpoint/activate-checkpoint {"checkpointNumber":$(checkpointNumber)}
#execute unless entity @s[tag=finnick4.f4boats.reached-checkpoint] run return fail
