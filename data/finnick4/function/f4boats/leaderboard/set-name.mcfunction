execute at @s unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}

loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot finnick4:f4boats/player_head
$data modify storage finnick4:boats scores[$(n)].name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.components."minecraft:profile".name

kill 3ecf96f6-5342-4ab1-a629-10926cea8230