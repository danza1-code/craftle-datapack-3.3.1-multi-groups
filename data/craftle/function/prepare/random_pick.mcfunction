#根据ran_val里的数从选取对应配方
$execute store result score type craftle_table run data get storage craftle:temp random_list[$(ran_val)]
#从总配方库中删除此配方
$data remove storage craftle:temp random_list[$(ran_val)]
#运行函数
function craftle:prepare/answer