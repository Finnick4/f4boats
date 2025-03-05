
playsound minecraft:entity.villager.trade master @s ~ ~ ~ 1

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" Here are the ","color":"gray"},{"text":"records","color":"gold"},{"text":" for ","color":"gray"},{"text":"every online player","color":"yellow"},{"text":":","color":"gray"}]

execute as @a run function finnick4:f4boats/trigger-menu/give-current-pb

advancement grant @s only finnick4:boats/stalker pb

