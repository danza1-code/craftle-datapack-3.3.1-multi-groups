#让每个玩家都能点击左下角
#这玩意写的太石了，有机会我一定重构
scoreboard players enable @a craftle_settings
gamerule minecraft:respawn_radius 0

execute if score gaming craftle_settings matches 0 run place template craftle:lobby -9 299 -6
execute if score gaming craftle_settings matches 0 run kill @e[type=item]

#锁定玩家配方,mx干的，真是太可恶了
recipe take @a *
#给未在游戏中的玩家显示面板
execute unless entity @a[tag=gamer] run title @a[tag=!gamer] actionbar {translate: "install_resourcepack!","color":"yellow"}
#给不同队伍玩家设置自己的bossbar
bossbar set craftle:blue_cooldown players @a[team=blue]
bossbar set craftle:red_cooldown players @a[team=red]
bossbar set craftle:yellow_cooldown players @a[team=yellow]
bossbar set craftle:green_cooldown players @a[team=green]
#将冷却时间显示到bossbar上
execute store result bossbar craftle:red_cooldown value run scoreboard players get red_cooldown craftle_DISCOUNT
execute store result bossbar craftle:blue_cooldown value run scoreboard players get blue_cooldown craftle_DISCOUNT
execute store result bossbar craftle:yellow_cooldown value run scoreboard players get yellow_cooldown craftle_DISCOUNT
execute store result bossbar craftle:green_cooldown value run scoreboard players get green_cooldown craftle_DISCOUNT
#如果在冷却中，显示bossbar
execute if score red_cooldown craftle_DISCOUNT matches 1.. run bossbar set craftle:red_cooldown visible true
execute if score blue_cooldown craftle_DISCOUNT matches 1.. run bossbar set craftle:blue_cooldown visible true
execute if score yellow_cooldown craftle_DISCOUNT matches 1.. run bossbar set craftle:yellow_cooldown visible true
execute if score green_cooldown craftle_DISCOUNT matches 1.. run bossbar set craftle:green_cooldown visible true
#如果冷却结束，隐藏bossbar
execute if score red_cooldown craftle_DISCOUNT matches 0 run bossbar set craftle:red_cooldown visible false
execute if score blue_cooldown craftle_DISCOUNT matches 0 run bossbar set craftle:blue_cooldown visible false
execute if score yellow_cooldown craftle_DISCOUNT matches 0 run bossbar set craftle:yellow_cooldown visible false
execute if score green_cooldown craftle_DISCOUNT matches 0 run bossbar set craftle:green_cooldown visible false
#冷却结束提示文字
execute if score red_cooldown craftle_DISCOUNT matches 1 run tellraw @a[team=red] {translate:"tip.message.done"} 
execute if score blue_cooldown craftle_DISCOUNT matches 1 run tellraw @a[team=blue] {translate:"tip.message.done"} 
execute if score yellow_cooldown craftle_DISCOUNT matches 1 run tellraw @a[team=yellow] {translate:"tip.message.done"}
execute if score green_cooldown craftle_DISCOUNT matches 1 run tellraw @a[team=green] {translate:"tip.message.done"}
#冷却结束发出音效
execute as @a[team=red] at @s if score red_cooldown craftle_DISCOUNT matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[team=blue] at @s if score blue_cooldown craftle_DISCOUNT matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[team=yellow] at @s if score yellow_cooldown craftle_DISCOUNT matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a[team=green] at @s if score green_cooldown craftle_DISCOUNT matches 1 run playsound entity.experience_orb.pickup player @s ~ ~ ~

#如果抬头潜行了，并且冷却结束，将冷却时间设置为300
execute as @a[tag=gamer,x_rotation=-90] if score @s sneak_time matches 1.. if score @s craftle_DISCOUNT matches 0 run scoreboard players set @s craftle_DISCOUNT 300
#冷却时间为300，给予玩家pre_check_ans标签
execute as @a if score @s craftle_DISCOUNT matches 300 run tag @s add pre_check_ans
#如果玩家有pre_check_ans标签，显示提交猜测按钮
tellraw @a[tag=pre_check_ans] [{translate:"button.run.guess","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 99"}},{translate:"button.run.tip",color:"gray"}]
tellraw @a[tag=pre_check_ans] [{translate:"button.run.fasttalk","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 90"}},{translate:"button.tip.fasttalk",color:"gray"}]
tellraw @a[tag=pre_check_ans] [{translate:"button.run.teammsg","color":"green",click_event:{action:"suggest_command",command:"/teammsg "}},{translate:"button.tip.teammsg",color:"gray"}]
execute as @a if score @s craftle_settings matches 90 run function craftle:fasttalk

#潜行并抬头时给所有未加入游戏的玩家显示面板，并防止重复出现
execute as @a[tag=!gamer,x_rotation=-90] if score @s sneak_time matches 1.. if score board craftle_DISCOUNT matches 0 run scoreboard players set board craftle_DISCOUNT 30
execute if score board craftle_DISCOUNT matches 30 run tag @a[tag=!gamer] add gaming
#游戏面板
tellraw @a[tag=gaming] ""
tellraw @a[tag=gaming] ""
tellraw @a[tag=gaming] ""
tellraw @a[tag=gaming] [{text:"==========",color:"gold"},{text:" GAMING ",color:"yellow"},{text:"==========" ,color:"gold"}]
tellraw @a[tag=gaming] [{translate:"button.game.start","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 1"}},{translate:"button.game.randomteam","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 2"}}]
tellraw @a[tag=gaming] [{translate:"button.game.unteam","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 3"}},{translate:"button.game.debug","color":"red",click_event:{action:"run_command",command:"tag @s add debug"}}]
tellraw @a[tag=gaming] [{translate:"button.game.blue","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 11"}},{translate:"button.game.red","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 12"}}]
tellraw @a[tag=gaming] [{translate:"button.game.yellow","color":"yellow",click_event:{action:"run_command",command:"trigger craftle_settings set 13"}},{translate:"button.game.green","color":"green",click_event:{action:"run_command",command:"trigger craftle_settings set 14"}}]
tellraw @a[tag=gaming] [{translate:"button.game.intro","color":"yellow",click_event:{action:"run_command",command:"trigger craftle_settings set 100"}},{translate:"button.game.maker","color":"yellow",click_event:{action:"run_command",command:"trigger craftle_settings set 64"}}]
tellraw @a[tag=gaming] [{text:"===========================",color:"gold"}]

#debug pannel
tellraw @a[tag=debug] [{text:"==========",color:"gold"},{translate:"gui.cheat",color:"yellow"},{text:"==========" ,color:"gold"}]
tellraw @a[tag=debug] [{translate:"button.cheat.check","color":"aqua",click_event:{action:"run_command",command:"tag @s add check_ans"}}]
tellraw @a[tag=debug] [{translate:"button.cheat.id","color":"aqua",click_event:{action:"run_command",command:'tellraw @s [{text:"ID: "},{score:{name:"type",objective:"craftle_table"}}]'}}]
tellraw @a[tag=debug] [{text:"===========================",color:"gold"}]
#制作团队
execute as @a if score @s craftle_settings matches 64 run function craftle:maker_list
#游戏开始若未分队则随机分队
execute as @a if score @s craftle_settings matches 1 run schedule function craftle:reset_teamming 1t replace


#提交答案后的处理
execute as @a[team=red] if score @s craftle_settings matches 99 if score red_cooldown craftle_DISCOUNT matches 0 run tag @s add check_ans
execute as @a[team=red] if score @s craftle_settings matches 99 if score red_cooldown craftle_DISCOUNT matches 0 run scoreboard players set red_cooldown craftle_DISCOUNT 2400
execute as @a[team=red] if score @s craftle_settings matches 99 if score red_cooldown craftle_DISCOUNT matches 1.. run tellraw @s[tag=!check_ans] {translate:"tip.message.wait"}
execute as @a[team=blue] if score @s craftle_settings matches 99 if score blue_cooldown craftle_DISCOUNT matches 0 run tag @s add check_ans
execute as @a[team=blue] if score @s craftle_settings matches 99 if score blue_cooldown craftle_DISCOUNT matches 0 run scoreboard players set blue_cooldown craftle_DISCOUNT 2400
execute as @a[team=blue] if score @s craftle_settings matches 99 if score blue_cooldown craftle_DISCOUNT matches 1.. run tellraw @s[tag=!check_ans] {translate:"tip.message.wait"}
execute as @a[team=yellow] if score @s craftle_settings matches 99 if score yellow_cooldown craftle_DISCOUNT matches 0 run tag @s add check_ans
execute as @a[team=yellow] if score @s craftle_settings matches 99 if score yellow_cooldown craftle_DISCOUNT matches 0 run scoreboard players set yellow_cooldown craftle_DISCOUNT 2400
execute as @a[team=yellow] if score @s craftle_settings matches 99 if score yellow_cooldown craftle_DISCOUNT matches 1.. run tellraw @s[tag=!check_ans] {translate:"tip.message.wait"}
execute as @a[team=green] if score @s craftle_settings matches 99 if score green_cooldown craftle_DISCOUNT matches 0 run tag @s add check_ans
execute as @a[team=green] if score @s craftle_settings matches 99 if score green_cooldown craftle_DISCOUNT matches 0 run scoreboard players set green_cooldown craftle_DISCOUNT 2400
execute as @a[team=green] if score @s craftle_settings matches 99 if score green_cooldown craftle_DISCOUNT matches 1.. run tellraw @s[tag=!check_ans] {translate:"tip.message.wait"}

execute if score gaming craftle_settings matches 1 as @a run execute unless score @s craftle_settings matches 99 run scoreboard players set @a craftle_settings 0

#保持队伍颜色
tag @a[team=red] add red
tag @a[team=blue] add blue
tag @a[team=yellow] add yellow
tag @a[team=green] add green
tag @a[team=] remove blue
tag @a[team=] remove red
tag @a[team=] remove yellow
tag @a[team=] remove green

#给所有在游戏中的玩家设置成生存模式
gamemode survival @a[tag=gamer]

#刚刚开始游戏时的处理
#将未分队玩家随机分队
execute as @a if score @s craftle_settings matches 1 run function craftle:random_team
execute as @a if score @s craftle_settings matches 1 run function craftle:hint_init
execute as @a if score @s craftle_settings matches 1 run scoreboard players set @a craftle_DISCOUNT 0
execute as @a if score @s craftle_settings matches 1 run xp set @a 0
execute as @a if score @s craftle_settings matches 1 run tag @a add gamer
execute as @a if score @s craftle_settings matches 1 run clear @a
execute as @a if score @s craftle_settings matches 1 run title @a subtitle ""
execute as @a if score @s craftle_settings matches 1 run effect clear @a
execute as @a if score @s craftle_settings matches 1 run scoreboard objectives setdisplay sidebar
execute as @a if score @s craftle_settings matches 1 if score intro craftle_DISCOUNT matches 480..2000 run trigger craftle_settings set 101
execute as @a if score @s craftle_settings matches 1 run xp set @s 0 levels
#清除大厅
execute as @a if score @s craftle_settings matches 1 run fill -9 299 -6 28 313 27 air
execute as @a if score @s craftle_settings matches 1 run spreadplayers ~ ~ 300 8000 true @a
execute as @a if score @s craftle_settings matches 1 run execute as @a at @s run spawnpoint
execute as @a if score @s craftle_settings matches 1 run scoreboard players set gaming craftle_settings 1
execute as @a if score @s craftle_settings matches 1 run title @a title [{translate:"start.title.1","underlined":true,"bold":true,"color":"gold"}]
execute as @a if score @s craftle_settings matches 1 run tellraw @a {translate:"start.message.1"}
execute as @a if score @s craftle_settings matches 1 run tellraw @a {translate:"start.message.2"}
execute as @a if score @s craftle_settings matches 1 run kill @e[type=item]
#提示开始计数
execute as @a if score @s craftle_settings matches 1 run scoreboard players set hint_discount craftle_DISCOUNT 12000
execute as @a if score @s craftle_settings matches 1 run gamerule pvp true
execute as @a if score @s craftle_settings matches 1 run gamerule advance_time true
execute as @a if score @s craftle_settings matches 1 run difficulty easy
#随机分队
execute as @a if score @s craftle_settings matches 2 run schedule function craftle:reset_teamming 1t replace
execute as @a if score @s craftle_settings matches 2 run function craftle:random_team
#取消分队
execute as @a if score @s craftle_settings matches 3 run team empty blue
execute as @a if score @s craftle_settings matches 3 run team empty red
execute as @a if score @s craftle_settings matches 3 run team empty yellow
execute as @a if score @s craftle_settings matches 3 run team empty green
#加入蓝队
execute as @a if score @s craftle_settings matches 11 run team join blue @s
#加入红队
execute as @a if score @s craftle_settings matches 12 run team join red @s
execute as @a if score @s craftle_settings matches 13 run team join yellow @s
execute as @a if score @s craftle_settings matches 14 run team join green @s


#游戏介绍，包含跳过
execute as @a if score @s craftle_settings matches 100 run scoreboard players set intro craftle_DISCOUNT 2000
execute as @a if score @s craftle_settings matches 100 run kill @e[type=minecraft:item_display]
execute as @a if score @s craftle_settings matches 100 run tellraw @a {translate:"button.intro.skip","color":"yellow",click_event:{action:"run_command",command:"trigger craftle_settings set 101"}}
execute as @a if score @s craftle_settings matches 101 run scoreboard players set intro craftle_DISCOUNT 0
execute as @a if score @s craftle_settings matches 101 run tellraw @a [{translate:"tip.message.skip1",color:"gray"}]
execute as @a if score @s craftle_settings matches 101 run tellraw @a [{text:"<Aurelith_FW> QAQ "}]
execute as @a if score @s craftle_settings matches 101 run tellraw @a [{translate:"tip.message.19",color:"yellow"}]
execute if score intro craftle_DISCOUNT matches 400..2000 run function craftle:intro
execute as @a if score @s craftle_settings matches 101 run kill @e[type=minecraft:item_display]

#hint
execute if score hint_discount craftle_DISCOUNT matches 6000 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 6000 run tellraw @a {translate:"hint.message.5m"}
execute if score hint_discount craftle_DISCOUNT matches 1200 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 1200 run tellraw @a {translate:"hint.message.1m"}
execute if score hint_discount craftle_DISCOUNT matches 200 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 200 run tellraw @a {translate:"hint.message.10s"}
execute if score hint_discount craftle_DISCOUNT matches 60 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 60 run tellraw @a {translate:"hint.message.3s"}
execute if score hint_discount craftle_DISCOUNT matches 40 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 40 run tellraw @a {translate:"hint.message.2s"}
execute if score hint_discount craftle_DISCOUNT matches 20 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 20 run tellraw @a {translate:"hint.message.1s"}
execute if score hint_discount craftle_DISCOUNT matches 1 run playsound entity.experience_orb.pickup player @a
execute if score hint_discount craftle_DISCOUNT matches 1 run function craftle:hint_gen
execute if score hint_discount craftle_DISCOUNT matches 1 if score ran_num craftle_table matches ..-1 run tellraw @a {translate:"hint.message.done",color:"green"}
execute if score hint_discount craftle_DISCOUNT matches 1 if score ran_num craftle_table matches ..-1 run scoreboard players set hint_discount craftle_DISCOUNT -1
execute if score hint_discount craftle_DISCOUNT matches 1 run scoreboard players set hint_discount craftle_DISCOUNT 6001

#提交答案后比较
clear @a minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.9 * run item replace entity @s container.9 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.10 * run item replace entity @s container.10 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.11 * run item replace entity @s container.11 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.18 * run item replace entity @s container.18 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.19 * run item replace entity @s container.19 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.20 * run item replace entity @s container.20 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.27 * run item replace entity @s container.27 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.28 * run item replace entity @s container.28 with minecraft:barrier
execute as @a[tag=check_ans] unless items entity @s container.29 * run item replace entity @s container.29 with minecraft:barrier
#此条代码为游戏关键，牵扯多个文件
execute as @a[tag=check_ans,limit=1,sort=random] run function craftle:answer_compare with storage craftle:answer

#防止出现队伍颜色错误
tag @a[team=red] remove blue
tag @a[team=red] remove yellow
tag @a[team=red] remove green
tag @a[team=blue] remove red
tag @a[team=blue] remove yellow
tag @a[team=blue] remove green
tag @a[team=yellow] remove red
tag @a[team=yellow] remove blue
tag @a[team=yellow] remove green
tag @a[team=green] remove red
tag @a[team=green] remove blue
tag @a[team=green] remove yellow
#未加入游戏的玩家保持在旁观者模式
execute as @a[tag=gamer] if score gaming craftle_settings matches 1 run gamemode spectator @a[tag=!gamer]
execute as @a[tag=gamer] if score gaming craftle_settings matches 1 run title @a[gamemode=spectator] actionbar {translate:"actionbar.spectator","color":"red"}
#自动进入大厅
execute as @a[tag=!gamer,tag=!worldset,gamemode=!creative] at @s if entity @s[y=-64,dy=364] if entity @s[gamemode=!spectator] if score gaming craftle_settings matches 0 run execute in minecraft:overworld run playsound minecraft:entity.enderman.teleport ui @s 8 301 8 100
execute as @a[tag=!gamer,tag=!worldset,gamemode=!creative] at @s if entity @s[y=-64,dy=364] if entity @s[gamemode=!spectator] if score gaming craftle_settings matches 0 run execute in minecraft:overworld run tp @s 8 301 8

#DISCOUNT，所有变量自减
execute if score intro craftle_DISCOUNT matches 1.. run scoreboard players remove intro craftle_DISCOUNT 1
execute if score board craftle_DISCOUNT matches 1.. run scoreboard players remove board craftle_DISCOUNT 1
execute if score red_cooldown craftle_DISCOUNT matches 1.. run scoreboard players remove red_cooldown craftle_DISCOUNT 1
execute if score blue_cooldown craftle_DISCOUNT matches 1.. run scoreboard players remove blue_cooldown craftle_DISCOUNT 1
execute if score yellow_cooldown craftle_DISCOUNT matches 1.. run scoreboard players remove yellow_cooldown craftle_DISCOUNT 1
execute if score green_cooldown craftle_DISCOUNT matches 1.. run scoreboard players remove green_cooldown craftle_DISCOUNT 1
execute as @a if score @s craftle_DISCOUNT matches 1.. run scoreboard players remove @s craftle_DISCOUNT 1
execute if score hint_discount craftle_DISCOUNT matches 1.. run scoreboard players remove hint_discount craftle_DISCOUNT 1

#reset
execute as @a unless score @s craftle_DISCOUNT matches -1.. run scoreboard players set @s craftle_DISCOUNT 0
execute if score gaming craftle_settings matches 0 run tag @a remove gamer
scoreboard players set @a craftle_settings 0
scoreboard players set @a sneak_time 0
tag @a remove debug
tag @a remove gaming
tag @a remove pre_check_ans
tag @a remove check_ans
team leave @a[gamemode=spectator]
tag @a[gamemode=spectator] remove blue
tag @a[gamemode=spectator] remove red
tag @a[gamemode=spectator] remove yellow
tag @a[gamemode=spectator] remove green

effect give @a[tag=nigth_vision] minecraft:night_vision infinite 1 true
