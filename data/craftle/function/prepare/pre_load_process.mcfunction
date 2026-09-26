#添加两个记分板random_list和random_store
scoreboard objectives add random_list dummy
scoreboard objectives add random_store dummy

#清空记分板
data remove storage craftle:temp random_list
data remove storage craftle:temp random_store

tellraw @a [{"text":"§6§lCraftle §r- §ePRE PROCESS LOADING","bold":true}]

#没有玩家自动重置
execute unless entity @a run schedule function craftle:prepare/pre_load_process 1s

#此处数字为全局变量，仅需更改此处即可更改随机列表长度 如果你添加了配方，请将此score数字改为你添加后的最后配方的分数
scoreboard players set answer_num random_store 101

#将配方数给一个随机玩家储存（记分板），然后也给craftle:temp ran_range赋值
scoreboard players add @a[tag=random] random_store 1

tag @a remove random
tag @r add random

execute store result storage craftle:temp ran_range int 1 run scoreboard players get answer_num random_store

scoreboard players operation @a[tag=random] random_store = answer_num random_store
function craftle:prepare/random_list_load
function craftle:prepare/load