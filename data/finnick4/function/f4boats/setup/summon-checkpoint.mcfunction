$say summoned a checkpoint entity with n = $(n) 



summon marker ~ ~ ~ {Tags:["f4boats.checkpoint","f4boats.checkpoint.summoned"]}

$execute as @e[type=marker, tag=f4boats.checkpoint.summoned] run function finnick4:f4boats/setup/internal/checkpoint-marker {n:$(n)}
