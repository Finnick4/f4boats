
execute on vehicle at @s if block ~ ~ ~ water on passengers run function finnick4:f4boats/in-water

execute on vehicle at @s if block ~ ~-2 ~ minecraft:bedrock on passengers run function finnick4:f4boats/checkpoint/on-checkpoint


# spawn particles on next checkpoint

execute store result score .checkpointparticle finnick4.boats.calc run scoreboard players get @s finnick4.boats.checkpoint
scoreboard players add .checkpointparticle finnick4.boats.calc 1
execute as @e[type=marker, tag=f4boats.checkpoint] if score @s finnick4.boats.checkpoint = .checkpointparticle finnick4.boats.calc run tag @s add finnick4.f4boats.checkpointparticle.found

execute at @e[tag=finnick4.f4boats.checkpointparticle.found] run particle minecraft:glow_squid_ink ~ ~2 ~ 0 0 0 0.2 1 force @s

tag @e[tag=finnick4.f4boats.checkpointparticle.found] remove finnick4.f4boats.checkpointparticle.found
