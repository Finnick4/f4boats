
execute unless entity @s[tag=finnick4.f4boats.race] run return fail

execute store result score .checkpointfinder finnick4.boats.calc run scoreboard players get @s finnick4.boats.checkpoint
execute on vehicle run tag @s add finnick4.f4boats.return

execute as @e[type=marker, tag=f4boats.checkpoint] if score @s finnick4.boats.checkpoint = .checkpointfinder finnick4.boats.calc run tag @s add finnick4.f4boats.checkpoint.found

tp @e[tag=finnick4.f4boats.return] @e[tag=finnick4.f4boats.checkpoint.found,limit=1]
execute at @e[tag=finnick4.f4boats.checkpoint.found,limit=1] run rotate @s facing ^ ^ ^1


tag @e[tag=finnick4.f4boats.checkpoint.found] remove finnick4.f4boats.checkpoint.found

execute on vehicle run tag @s remove finnick4.f4boats.return
