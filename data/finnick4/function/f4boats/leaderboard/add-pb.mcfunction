


## check and if needed eliminate previous record of same name

# get the name
execute at @s unless entity 3ecf96f6-5342-4ab1-a629-10926cea8230 run summon item_display ~ ~ ~ {UUID:[I;1053791990,1396853425,-1507258222,1827308080]}

loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot finnick4:f4boats/player_head
data modify storage finnick4:boats.comp original set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.components."minecraft:profile".name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
kill 3ecf96f6-5342-4ab1-a629-10926cea8230

# check for on LB
execute store success score .strcmp finnick4.boats.calc run data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats scores[0].name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
execute if score .strcmp finnick4.boats.calc matches 0 run function finnick4:f4boats/leaderboard/remove-entry {n:0}

execute store success score .strcmp finnick4.boats.calc run data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats scores[1].name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
execute if score .strcmp finnick4.boats.calc matches 0 run function finnick4:f4boats/leaderboard/remove-entry {n:1}

execute store success score .strcmp finnick4.boats.calc run data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats scores[2].name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
execute if score .strcmp finnick4.boats.calc matches 0 run function finnick4:f4boats/leaderboard/remove-entry {n:2}

execute store success score .strcmp finnick4.boats.calc run data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats scores[3].name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
execute if score .strcmp finnick4.boats.calc matches 0 run function finnick4:f4boats/leaderboard/remove-entry {n:3}

execute store success score .strcmp finnick4.boats.calc run data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats scores[4].name
data modify storage finnick4:boats.comp strcmp set from storage finnick4:boats.comp original
execute if score .strcmp finnick4.boats.calc matches 0 run function finnick4:f4boats/leaderboard/remove-entry {n:4}
# load the current LB entries
execute store result score .lb.1 finnick4.boats.calc run data get storage finnick4:boats scores[0].time
execute store result score .lb.2 finnick4.boats.calc run data get storage finnick4:boats scores[1].time
execute store result score .lb.3 finnick4.boats.calc run data get storage finnick4:boats scores[2].time
execute store result score .lb.4 finnick4.boats.calc run data get storage finnick4:boats scores[3].time
execute store result score .lb.5 finnick4.boats.calc run data get storage finnick4:boats scores[4].time

# make copy of current LB
data modify storage finnick4:boats.copy scores set from storage finnick4:boats scores

function finnick4:f4boats/leaderboard/reset-leaderboard

# prepare unset values to fail by making them 1 higher than pb duration
execute if score .lb.1 finnick4.boats.calc matches -1 run function finnick4:f4boats/leaderboard/prepare {name:".lb.1"}
execute if score .lb.2 finnick4.boats.calc matches -1 run function finnick4:f4boats/leaderboard/prepare {name:".lb.2"}
execute if score .lb.3 finnick4.boats.calc matches -1 run function finnick4:f4boats/leaderboard/prepare {name:".lb.3"}
execute if score .lb.4 finnick4.boats.calc matches -1 run function finnick4:f4boats/leaderboard/prepare {name:".lb.4"}
execute if score .lb.5 finnick4.boats.calc matches -1 run function finnick4:f4boats/leaderboard/prepare {name:".lb.5"}


# vgl 1: insert und von copy einsetzen (1, 2, 3, 4) und fail | weiter
execute if score .lb.1 finnick4.boats.calc > @s finnick4.boats.pb.duration run function finnick4:f4boats/leaderboard/change/1
execute if score .lb.1 finnick4.boats.calc > @s finnick4.boats.pb.duration run return fail

# vgl 2: insert und von copy einsetzen (2, 3, 4) und fail | weiter
execute if score .lb.2 finnick4.boats.calc > @s finnick4.boats.pb.duration run function finnick4:f4boats/leaderboard/change/2
execute if score .lb.2 finnick4.boats.calc > @s finnick4.boats.pb.duration run return fail

# vgl 3: insert und von copy einsetzen (3, 4) und fail | weiter
execute if score .lb.3 finnick4.boats.calc > @s finnick4.boats.pb.duration run function finnick4:f4boats/leaderboard/change/3
execute if score .lb.3 finnick4.boats.calc > @s finnick4.boats.pb.duration run return fail

# vgl 4: insert und von copy einsetzen (4) und fail | nichts
execute if score .lb.4 finnick4.boats.calc > @s finnick4.boats.pb.duration run function finnick4:f4boats/leaderboard/change/4
execute if score .lb.4 finnick4.boats.calc > @s finnick4.boats.pb.duration run return fail

# vgl 5: insert
execute if score .lb.5 finnick4.boats.calc > @s finnick4.boats.pb.duration run function finnick4:f4boats/leaderboard/change/5
execute if score .lb.5 finnick4.boats.calc > @s finnick4.boats.pb.duration run return fail
