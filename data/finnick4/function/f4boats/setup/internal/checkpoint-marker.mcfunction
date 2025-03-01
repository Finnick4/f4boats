# is called when a checkpoint marker is spawned!

$scoreboard players set @s finnick4.boats.checkpoint $(n)
say I just got initialised!
execute as @s at @s rotated as @p run tp @s ~ ~ ~ ~ ~
function finnick4:f4boats/setup/internal/calculate-length

tag @s remove f4boats.checkpoint.summoned
