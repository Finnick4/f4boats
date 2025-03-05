
## remove scoreboars
scoreboard objectives remove finnick4.boats.checkpoint 
scoreboard objectives remove finnick4.boats.calc 

scoreboard objectives remove finnick4.boats.time.start 
scoreboard objectives remove finnick4.boats.time.end 
scoreboard objectives remove finnick4.boats.time.duration 
scoreboard objectives remove finnick4.boats.time.seconds 
scoreboard objectives remove finnick4.boats.time.decimal.1 
scoreboard objectives remove finnick4.boats.time.decimal.2 

# Stats
# pb
scoreboard objectives remove finnick4.boats.pb.duration 
scoreboard objectives remove finnick4.boats.pb.seconds 
scoreboard objectives remove finnick4.boats.pb.decimal.1 
scoreboard objectives remove finnick4.boats.pb.decimal.2 

# latest
scoreboard objectives remove finnick4.boats.latest.duration 
scoreboard objectives remove finnick4.boats.latest.seconds 
scoreboard objectives remove finnick4.boats.latest.decimal.1 
scoreboard objectives remove finnick4.boats.latest.decimal.2 

# seasonal
scoreboard objectives remove finnick4.boats.seasonal.duration 
scoreboard objectives remove finnick4.boats.seasonal.seconds 
scoreboard objectives remove finnick4.boats.seasonal.decimal.1 
scoreboard objectives remove finnick4.boats.seasonal.decimal.2 

scoreboard objectives remove finnick4.boats.season 

# Misc

scoreboard objectives remove finnick4.boats.stat.started 
scoreboard objectives remove finnick4.boats.stat.finished 
scoreboard objectives remove finnick4.boats.stat.canceled 
scoreboard objectives remove finnick4.boats.stat.checkpoints 
scoreboard objectives remove finnick4.boats.stat.menuviews 
scoreboard objectives remove finnick4.boats.stat.returns 


scoreboard players set .20 finnick4.boats.calc 20
scoreboard players set .10 finnick4.boats.calc 10
scoreboard players set .2 finnick4.boats.calc 2

# trigger
scoreboard objectives remove iceboat

## remove data storage
# main
data remove storage finnick4:boats seasonal
data remove storage finnick4:boats scores
data remove storage finnick4:boats n
# copy
data remove storage finnick4:boats.copy seasonal
data remove storage finnick4:boats.copy scores
# compare
data remove storage finnick4:boats.comp strcomp
data remove storage finnick4:boats.comp original

tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"Uninstalling the datapack now leaves no traces! ","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"Make sure to remove all checkpoints by loading the respective chunks and running ","color":"gray"},{"text":"/function finnick4:f4boats/debug/remove-all-checkpoints","italic":true,"color":"red","clickEvent":{"action":"suggest_command","value":"/function finnick4:f4boats/debug/remove-all-checkpoints"}},{"text":"!","color":"gray"}]

