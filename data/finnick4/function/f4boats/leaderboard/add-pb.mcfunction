
say this pb is worthy of the leaderboard

# load the current LB entries
execute store result score .lb.1 finnick4.boats.calc run data get storage finnick4:boats scores[0].time
execute store result score .lb.2 finnick4.boats.calc run data get storage finnick4:boats scores[1].time
execute store result score .lb.3 finnick4.boats.calc run data get storage finnick4:boats scores[2].time
execute store result score .lb.4 finnick4.boats.calc run data get storage finnick4:boats scores[3].time
# number 5 was already loaded

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
