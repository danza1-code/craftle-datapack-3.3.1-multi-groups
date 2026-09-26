#从0到当前答案数选一个数储存到craftle:temp ran_val里
$execute store result storage craftle:temp ran_val int 1 run random value 0..$(ran_range)

#将答案数减一
scoreboard players remove answer_num random_store 1
execute store result storage craftle:temp ran_range int 1 run scoreboard players get answer_num random_store

#运行选取函数
function craftle:prepare/random_pick with storage craftle:temp