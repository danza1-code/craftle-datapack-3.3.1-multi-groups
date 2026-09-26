
$execute store result score ran_hint craftle_table run random value 0..$(ran_max)
execute store result storage craftle:hint num_val int 1 run scoreboard players get ran_hint craftle_table
scoreboard players remove ran_num craftle_table 1
execute store result storage craftle:hint ran_max int 1 run scoreboard players get ran_num craftle_table
function craftle:hint_rangen_num with storage craftle:hint