##
 # reset.mcfunction
 # f4boats
 #
 # Created by Finnick4.
##

tellraw @a ["",{"text":"Datapack","color":"light_purple"},{"text":" \"","color":"dark_gray"},{"text":"f4iceboat","color":"dark_green"},{"text":"\"","color":"dark_gray"},{"text":" has loaded!","color":"light_purple"},{"text":"\n"},{"text":"Datapack created by Finnick4","color":"red"},{"text":"!\n\nIf you want to check out more of my work,\nhave a look at my Modrinth profile:","color":"gray"},{"text":"\n"},{"text":"https://modrinth.com/user/Finnick4","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/user/Finnick4"}},{"text":"\n"},{"text":"Discord Server: https://discord.gg/bFtD9nPU3y","color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/bFtD9nPU3y"}}]

# create scoreboards
scoreboard objectives add finnick4.boats.checkpoint dummy
scoreboard objectives add finnick4.boats.calc dummy

scoreboard objectives add finnick4.boats.time.start dummy
scoreboard objectives add finnick4.boats.time.end dummy
scoreboard objectives add finnick4.boats.time.duration dummy
scoreboard objectives add finnick4.boats.time.seconds dummy
scoreboard objectives add finnick4.boats.time.decimal.1 dummy
scoreboard objectives add finnick4.boats.time.decimal.2 dummy

scoreboard players set .20 finnick4.boats.calc 20
scoreboard players set .10 finnick4.boats.calc 10
scoreboard players set .2 finnick4.boats.calc 2

scoreboard objectives add pdb dummy
