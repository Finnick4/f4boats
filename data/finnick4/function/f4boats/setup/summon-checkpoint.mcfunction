
$tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"Created checkpoint ","color":"gray"},{"text":"number $(n)","color":"green"},{"text":". ","color":"gray"},{"text":"Reminder: Place Bedrock","color":"red"},{"text":"!","color":"gray"}]

summon marker ~ ~ ~ {Tags:["f4boats.checkpoint","f4boats.checkpoint.summoned"]}

$execute as @e[type=marker, tag=f4boats.checkpoint.summoned] run function finnick4:f4boats/setup/internal/checkpoint-marker {n:$(n)}
