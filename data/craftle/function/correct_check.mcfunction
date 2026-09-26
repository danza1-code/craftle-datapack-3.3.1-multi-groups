#显示胜利信息
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=red] run title @a title [{translate:"win.title.red","underlined":true,"bold":true,color:"red"}]
$execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=red] run title @a subtitle [{translate:"win.subtitle.end",color:"gold"},{translate:"$(item_ans)",color:"green"},{text:"！",color:"gold"}]
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=red] run tag @s add red_winner
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=blue] run title @a title [{translate:"win.title.blue","underlined":true,"bold":true,color:"blue"}]
$execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=blue] run title @a subtitle [{translate:"win.subtitle.end",color:"gold"},{translate:"$(item_ans)",color:"green"},{text:"！",color:"gold"}]
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=blue] run tag @s add blue_winner
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=yellow] run title @a title [{translate:"win.title.yellow","underlined":true,"bold":true,color:"yellow"}]
$execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=yellow] run title @a subtitle [{translate:"win.subtitle.end",color:"gold"},{translate:"$(item_ans)",color:"green"},{text:"！",color:"gold"}]
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=yellow] run tag @s add yellow_winner
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=green] run title @a title [{translate:"win.title.green","underlined":true,"bold":true,color:"green"}]
$execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=green] run title @a subtitle [{translate:"win.subtitle.end",color:"gold"},{translate:"$(item_ans)",color:"green"},{text:"！",color:"gold"}]
execute if score @a[tag=check_ans,limit=1] correct_times matches 9 if entity @s[team=green] run tag @s add green_winner
execute as @a if score @s correct_times matches 9 run execute as @a at @s run playsound entity.player.levelup player @s ~ ~ ~

#加分
execute as @a if score @s correct_times matches 9 if entity @s[team=red] run scoreboard players add @a[team=red] craftle_scores 1
execute as @a if score @s correct_times matches 9 if entity @s[team=blue] run scoreboard players add @a[team=blue] craftle_scores 1
execute as @a if score @s correct_times matches 9 if entity @s[team=yellow] run scoreboard players add @a[team=yellow] craftle_scores 1
execute as @a if score @s correct_times matches 9 if entity @s[team=green] run scoreboard players add @a[team=green] craftle_scores 1

#重置游戏
tag @a remove red_winner
tag @a remove blue_winner
tag @a remove yellow_winner
tag @a remove green_winner
execute as @a if score @s correct_times matches 9 run schedule function craftle:prepare/load 3s
scoreboard players set @a correct_times 0

execute as @a if score @s correct_times matches 9 run fill -5 316 -5 5 319 5 minecraft:glass hollow
execute as @a if score @s correct_times matches 9 run fill -4 319 -4 4 319 4 minecraft:air
execute as @a if score @s correct_times matches 9 run fill -5 316 -5 5 316 5 minecraft:oak_planks
execute as @a if score @s correct_times matches 9 run tp @a 0 317 0
