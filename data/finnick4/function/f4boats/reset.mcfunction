
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

## Stats
# pb
scoreboard objectives add finnick4.boats.pb.duration dummy
scoreboard objectives add finnick4.boats.pb.seconds dummy
scoreboard objectives add finnick4.boats.pb.decimal.1 dummy
scoreboard objectives add finnick4.boats.pb.decimal.2 dummy

# latest
scoreboard objectives add finnick4.boats.latest.duration dummy
scoreboard objectives add finnick4.boats.latest.seconds dummy
scoreboard objectives add finnick4.boats.latest.decimal.1 dummy
scoreboard objectives add finnick4.boats.latest.decimal.2 dummy

## Misc

scoreboard objectives add finnick4.boats.stat.started dummy
scoreboard objectives add finnick4.boats.stat.finished dummy
scoreboard objectives add finnick4.boats.stat.canceled dummy
scoreboard objectives add finnick4.boats.stat.checkpoints dummy
scoreboard objectives add finnick4.boats.stat.menuviews dummy
scoreboard objectives add finnick4.boats.stat.returns dummy


scoreboard players set .20 finnick4.boats.calc 20
scoreboard players set .10 finnick4.boats.calc 10
scoreboard players set .2 finnick4.boats.calc 2

# trigger
scoreboard objectives add iceboat trigger

