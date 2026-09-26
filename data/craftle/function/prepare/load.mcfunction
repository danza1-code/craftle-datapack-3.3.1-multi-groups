#防止配方数小于0
execute if score answer_num random_store matches ..0 run function craftle:prepare/pre_load_process
execute if score answer_num random_store matches ..0 run return 1
#重置玩家成就
advancement revoke @a everything
setworldspawn 8 301 8

#移除旧记分板
scoreboard objectives remove craftle_DISCOUNT

kill @e[type=minecraft:item_display]
weather clear

#添加记分板
scoreboard objectives add craftle_testitem dummy
scoreboard objectives add craftle_table dummy
scoreboard objectives add craftle_settings trigger
scoreboard objectives add craftle_DISCOUNT dummy
scoreboard objectives add craftle_scores dummy {translate:"score.score"}
scoreboard objectives add craftle_dashbord dummy "CRAFTLE"
scoreboard objectives add sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add correct_times dummy
scoreboard objectives add craftle_ifBlock dummy

#移除之前bossbar
bossbar remove craftle:red_cooldown
bossbar remove craftle:blue_cooldown
bossbar remove craftle:yellow_cooldown
bossbar remove craftle:green_cooldown

#添加并设置新bossbar
bossbar add craftle:red_cooldown {translate:"bossbar.teamredcooldown"}
bossbar set craftle:red_cooldown color red
bossbar set craftle:red_cooldown max 2400
bossbar set craftle:red_cooldown value 0

bossbar add craftle:blue_cooldown {translate:"bossbar.teambluecooldown"}
bossbar set craftle:blue_cooldown color blue
bossbar set craftle:blue_cooldown max 2400
bossbar set craftle:blue_cooldown value 0

bossbar add craftle:yellow_cooldown {translate:"bossbar.teamyellowcooldown"}
bossbar set craftle:yellow_cooldown color yellow
bossbar set craftle:yellow_cooldown max 2400
bossbar set craftle:yellow_cooldown value 0

bossbar add craftle:green_cooldown {translate:"bossbar.teamgreencooldown"}
bossbar set craftle:green_cooldown color green
bossbar set craftle:green_cooldown max 2400
bossbar set craftle:green_cooldown value 0


#取消命令反馈
gamerule send_command_feedback false
#设置为白天
time set day

#在右侧显示玩家分数
scoreboard objectives setdisplay sidebar craftle_scores

#初始化记分板
#各队伍冷却时间
scoreboard players set red_cooldown craftle_DISCOUNT 0
scoreboard players set blue_cooldown craftle_DISCOUNT 0
scoreboard players set yellow_cooldown craftle_DISCOUNT 0
scoreboard players set green_cooldown craftle_DISCOUNT 0
#玩家专属计数，用于很多功能
scoreboard players set @a craftle_DISCOUNT 0
scoreboard players set @a sneak_time 0
scoreboard players set @a correct_times 0
#提示时间计数
scoreboard players set hint_discount craftle_DISCOUNT 0

scoreboard players set board craftle_DISCOUNT 0

#以下指令自动运行三个函数中的代码，最后选好配方并储存在craftle:answer中
function craftle:prepare/random_gen with storage craftle:temp

#添加队伍
team remove gray
team add red
team add blue
team add yellow
team add green
team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify green color green
#清除玩家tag
tag @a remove gamer
tag @a remove blue
tag @a remove red
tag @a remove yellow
tag @a remove green
tag @a remove random

clear @a

#调整基础游戏设定，调整为等待游戏开始状态
gamemode adventure @a
gamerule pvp false
gamerule advance_time false
gamerule keep_inventory true
difficulty peaceful

tellraw @a [{translate:"load.message","bold":true}]

data modify storage craftle:temp isBlock set value "block"
data modify storage craftle:temp isItem set value "item"

#给所有在线玩家添加gaming标签
tag @a add gaming
execute in minecraft:overworld run tp @a 8 301 8
place template craftle:lobby -9 299 -6

scoreboard players set gaming craftle_settings 0

#debug
#tag @a add debug
#scoreboard objectives setdisplay sidebar craftle_settings
