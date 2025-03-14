
execute if score @s finnick4.boats.pb.duration = @s finnick4.boats.time.duration run function finnick4:f4boats/checkpoint/no-pb
execute if score @s finnick4.boats.pb.duration = @s finnick4.boats.time.duration run return fail

function finnick4:f4boats/timer/calculate-pb-diffrence

tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" finished the race","color":"yellow"},{"text":" with a time of ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.time.seconds"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.1"},"color":"aqua"},{"score":{"name":"@s","objective":"finnick4.boats.time.decimal.2"},"color":"aqua"},{"text":" seconds","color":"dark_aqua"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" This is a new record for ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"]","color":"dark_gray"},{"text":" The previous record was ","color":"gray"},{"score":{"name":"@s","objective":"finnick4.boats.pb.seconds"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.1"},"color":"red"},{"score":{"name":"@s","objective":"finnick4.boats.pb.decimal.2"},"color":"red"},{"text":" seconds, meaning","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"Ice Boat","color":"aqua"},{"text":"] ","color":"dark_gray"},{"text":"this is an improvement of ","color":"gray"},{"score":{"name":".sec","objective":"finnick4.boats.calc"},"color":"green"},{"text":".","color":"green"},{"score":{"name":".dec1","objective":"finnick4.boats.calc"},"color":"green"},{"score":{"name":".dec2","objective":"finnick4.boats.calc"},"color":"green"},{"text":" seconds!","color":"gray"}]

function finnick4:f4boats/checkpoint/set-pb

advancement grant @s only finnick4:boats/new_me
