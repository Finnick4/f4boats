# is called when a checkpoint marker is spawned!

$scoreboard players set @s finnick4.boats.checkpoint $(n)

execute if score @s finnick4.boats.checkpoint matches 0 at @s run summon text_display ~ ~3 ~ {billboard:"center",shadow:1b,alignment:"center",Tags:["finnick4.boats.starttext"],text:'[{"color":"gray","text":"This is the "},{"color":"gold","text":"start "},"to the ",{"color":"aqua","text":"ice boat race"},{"text":"!\\nTo start the race, "},{"color":"yellow","text":"seat yourself in a boat "},"and select the ",{"color":"dark_gray","text":"["},{"color":"green","text":"Start race"},{"color":"dark_gray","text":"]"}," option from ",{"color":"red","italic":true,"text":"/trigger iceboat"},{"text":" or click this text!\\n\\n"},{"bold":true,"color":"gold","text":"Good luck and have fun!"}]'}
execute if score @s finnick4.boats.checkpoint matches 0 at @s run summon interaction ~ ~ ~ {width:4f,height:4.5f,Tags:["finnick4.boats.startinteraction"]}

execute as @s at @s rotated as @p run tp @s ~ ~ ~ ~ ~

tag @s remove f4boats.checkpoint.summoned
