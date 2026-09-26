#循环结构，将那位随机玩家的配方数储存到craftle:temp random_list中 ，将那一位随机玩家的数清零
execute if score @a[tag=random,limit=1] random_store matches 1.. store result storage craftle:temp value_temp int 1 run scoreboard players get @a[tag=random,limit=1] random_store
execute if score @a[tag=random,limit=1] random_store matches 1.. run data modify storage craftle:temp random_list append from storage craftle:temp value_temp
execute if score @a[tag=random,limit=1] random_store matches 1.. run scoreboard players remove @a[tag=random,limit=1] random_store 1
execute if score @a[tag=random,limit=1] random_store matches 1.. run function craftle:prepare/random_list_load
execute if score @a[tag=random,limit=1] random_store matches 1.. run return 1
#循环结束
execute if score @a[tag=random,limit=1] random_store matches 0 run scoreboard players remove @a[tag=random,limit=1] random_store 1

