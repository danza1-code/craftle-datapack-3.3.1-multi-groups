#如果你要自己添加配方，复制下方的一串并且把数字改成你想要的配方编号即可，此外，将prepare文件夹中的pre_load_process.mcfunction中的数字也改成你添加后的总配方数
#请不要忘记，要不然你添加的配方将无法被选中

#先将这9个位置的物品设为barrier，表示空位
data modify storage craftle:answer craft_1 set value "minecraft:barrier"
data modify storage craftle:answer craft_2 set value "minecraft:barrier"
data modify storage craftle:answer craft_3 set value "minecraft:barrier"
data modify storage craftle:answer craft_4 set value "minecraft:barrier"
data modify storage craftle:answer craft_5 set value "minecraft:barrier"
data modify storage craftle:answer craft_6 set value "minecraft:barrier"
data modify storage craftle:answer craft_7 set value "minecraft:barrier"
data modify storage craftle:answer craft_8 set value "minecraft:barrier"
data modify storage craftle:answer craft_9 set value "minecraft:barrier"

#可用的标签
#原木 #minecraft:logs
#木板 #minecraft:planks
#羊毛 #minecraft:wool
#木制台阶 #minecraft:wooden_slabs
#染料 #craftle:dye
#煤炭 #craftle:coal
#灵魂方块 #craftle:soul_block
#鸡蛋 #craftle:eggs
#去皮木材 #craftle:stripped_logs

#统计配方列表 一行20个
#弩
#活塞 音符盒 侦测器 TNT 脚手架 唱片机 盔甲架 末影箱 红石比较器 红石灯 砂轮 附魔台 切石机 讲台 制箭台 锻造台 制图台 织布机 重生锚 磁石
#烟熏炉 高炉 铁砧 指南针 钟 铁轨 充能铁轨 探测铁轨 激活铁轨 白色羊毛画 物品展示框 白色旗帜 遮光玻璃 末地水晶 木桶 灯笼 煤炭营火 灵魂营火（灵魂沙） 悬挂式橡木告示牌 铜箱子
#蜜箱 展示架 铜灯笼 灵魂灯笼 漏斗 合成器 蛋糕 金苹果 金胡萝卜 书架 石砖 南瓜灯 白色染色玻璃 闪长岩 砂土 白色陶瓦 白色床 橡木告示牌 白色玻璃板 木栅栏
#下界砖栅栏 铜链 铁链 蜡烛 灵魂火把 铜火把 橡木栅栏门 红石中继器 绊线钩 投掷器 发射器 阳光探测器 标靶 校频幽匿感测体 蘑菇煲 曲奇 南瓜派 甜菜汤 兔肉煲 蜂蜜瓶
#栓绳 望远镜 钓鱼竿 刷子 盾 弓 箭 光灵箭 闪烁的西瓜片 发酵蜘蛛眼 酿造台 炼药锅 书 空地图 火焰弹 书与笔 堆肥桶 收纳袋 白色挽具 下届合金锭
#安山岩 饰纹陶罐 下界合金升级 狼铠

#以下代码用来把选中的配方填写到craftle:answer中

#弩
execute if score type craftle_table matches 0 run data modify storage craftle:answer item_ans set value "item.minecraft.crossbow"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_1 set value "minecraft:stick"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_4 set value "minecraft:string"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_5 set value "minecraft:tripwire_hook"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_6 set value "minecraft:string"
execute if score type craftle_table matches 0 run data modify storage craftle:answer craft_8 set value "minecraft:stick"

#活塞
execute if score type craftle_table matches 1 run data modify storage craftle:answer item_ans set value "block.minecraft.piston"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_4 set value "minecraft:cobblestone"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_5 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_6 set value "minecraft:cobblestone"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_7 set value "minecraft:cobblestone"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"
execute if score type craftle_table matches 1 run data modify storage craftle:answer craft_9 set value "minecraft:cobblestone"

#音符盒
execute if score type craftle_table matches 2 run data modify storage craftle:answer item_ans set value "block.minecraft.note_block"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_5 set value "minecraft:redstone"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 2 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#侦测器
execute if score type craftle_table matches 3 run data modify storage craftle:answer item_ans set value "block.minecraft.observer"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_1 set value "minecraft:cobblestone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_2 set value "minecraft:cobblestone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_3 set value "minecraft:cobblestone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_4 set value "minecraft:redstone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_5 set value "minecraft:redstone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_6 set value "minecraft:quartz"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_7 set value "minecraft:cobblestone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_8 set value "minecraft:cobblestone"
execute if score type craftle_table matches 3 run data modify storage craftle:answer craft_9 set value "minecraft:cobblestone"

#TNT
execute if score type craftle_table matches 4 run data modify storage craftle:answer item_ans set value "block.minecraft.tnt"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_1 set value "minecraft:gunpowder"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_2 set value "minecraft:sand"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_3 set value "minecraft:gunpowder"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_4 set value "minecraft:sand"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_5 set value "minecraft:gunpowder"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_6 set value "minecraft:sand"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_7 set value "minecraft:gunpowder"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_8 set value "minecraft:sand"
execute if score type craftle_table matches 4 run data modify storage craftle:answer craft_9 set value "minecraft:gunpowder"

#脚手架
execute if score type craftle_table matches 5 run data modify storage craftle:answer item_ans set value "block.minecraft.scaffolding"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_1 set value "minecraft:bamboo"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_2 set value "minecraft:string"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_3 set value "minecraft:bamboo"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_4 set value "minecraft:bamboo"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_6 set value "minecraft:bamboo"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_7 set value "minecraft:bamboo"
execute if score type craftle_table matches 5 run data modify storage craftle:answer craft_9 set value "minecraft:bamboo"

#唱片机
execute if score type craftle_table matches 6 run data modify storage craftle:answer item_ans set value "block.minecraft.jukebox"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_5 set value "minecraft:diamond"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 6 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#盔甲架
execute if score type craftle_table matches 7 run data modify storage craftle:answer item_ans set value "entity.minecraft.armor_stand"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_1 set value "minecraft:stick"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_7 set value "minecraft:stick"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_8 set value "minecraft:smooth_stone_slab"
execute if score type craftle_table matches 7 run data modify storage craftle:answer craft_9 set value "minecraft:stick"

#末影箱
execute if score type craftle_table matches 8 run data modify storage craftle:answer item_ans set value "block.minecraft.ender_chest"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_1 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_2 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_3 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_4 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_5 set value "minecraft:ender_eye"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_6 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_7 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_8 set value "minecraft:obsidian"
execute if score type craftle_table matches 8 run data modify storage craftle:answer craft_9 set value "minecraft:obsidian"

#红石比较器
execute if score type craftle_table matches 9 run data modify storage craftle:answer item_ans set value "block.minecraft.comparator"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_2 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_4 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_5 set value "minecraft:quartz"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_6 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_7 set value "minecraft:stone"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_8 set value "minecraft:stone"
execute if score type craftle_table matches 9 run data modify storage craftle:answer craft_9 set value "minecraft:stone"

#红石灯
execute if score type craftle_table matches 10 run data modify storage craftle:answer item_ans set value "block.minecraft.redstone_lamp"
execute if score type craftle_table matches 10 run data modify storage craftle:answer craft_2 set value "minecraft:redstone"
execute if score type craftle_table matches 10 run data modify storage craftle:answer craft_4 set value "minecraft:redstone"
execute if score type craftle_table matches 10 run data modify storage craftle:answer craft_5 set value "minecraft:glowstone"
execute if score type craftle_table matches 10 run data modify storage craftle:answer craft_6 set value "minecraft:redstone"
execute if score type craftle_table matches 10 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"

#砂轮
execute if score type craftle_table matches 11 run data modify storage craftle:answer item_ans set value "block.minecraft.grindstone"
execute if score type craftle_table matches 11 run data modify storage craftle:answer craft_1 set value "minecraft:stick"
execute if score type craftle_table matches 11 run data modify storage craftle:answer craft_2 set value "minecraft:stone_slab"
execute if score type craftle_table matches 11 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 11 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 11 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"

#附魔台
execute if score type craftle_table matches 12 run data modify storage craftle:answer item_ans set value "block.minecraft.enchanting_table"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_2 set value "minecraft:book"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_4 set value "minecraft:diamond"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_5 set value "minecraft:obsidian"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_6 set value "minecraft:diamond"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_7 set value "minecraft:obsidian"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_8 set value "minecraft:obsidian"
execute if score type craftle_table matches 12 run data modify storage craftle:answer craft_9 set value "minecraft:obsidian"


#切石机
execute if score type craftle_table matches 13 run data modify storage craftle:answer item_ans set value "block.minecraft.stonecutter"
execute if score type craftle_table matches 13 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 13 run data modify storage craftle:answer craft_4 set value "minecraft:stone"
execute if score type craftle_table matches 13 run data modify storage craftle:answer craft_5 set value "minecraft:stone"
execute if score type craftle_table matches 13 run data modify storage craftle:answer craft_6 set value "minecraft:stone"

#讲台
execute if score type craftle_table matches 14 run data modify storage craftle:answer item_ans set value "block.minecraft.lectern"
execute if score type craftle_table matches 14 run data modify storage craftle:answer craft_1 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 14 run data modify storage craftle:answer craft_2 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 14 run data modify storage craftle:answer craft_3 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 14 run data modify storage craftle:answer craft_5 set value "minecraft:bookshelf"
execute if score type craftle_table matches 14 run data modify storage craftle:answer craft_8 set value "#minecraft:wooden_slabs"

#制箭台
execute if score type craftle_table matches 15 run data modify storage craftle:answer item_ans set value "block.minecraft.fletching_table"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_1 set value "minecraft:flint"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_2 set value "minecraft:flint"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 15 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"

#锻造台
execute if score type craftle_table matches 16 run data modify storage craftle:answer item_ans set value "block.minecraft.smithing_table"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 16 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"

#制图台
execute if score type craftle_table matches 17 run data modify storage craftle:answer item_ans set value "block.minecraft.cartography_table"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_1 set value "minecraft:paper"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_2 set value "minecraft:paper"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 17 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"

#织布机
execute if score type craftle_table matches 18 run data modify storage craftle:answer item_ans set value "block.minecraft.loom"
execute if score type craftle_table matches 18 run data modify storage craftle:answer craft_1 set value "minecraft:string"
execute if score type craftle_table matches 18 run data modify storage craftle:answer craft_2 set value "minecraft:string"
execute if score type craftle_table matches 18 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 18 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"

#重生锚
execute if score type craftle_table matches 19 run data modify storage craftle:answer item_ans set value "block.minecraft.respawn_anchor"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_1 set value "minecraft:crying_obsidian"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_2 set value "minecraft:crying_obsidian"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_3 set value "minecraft:crying_obsidian"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_4 set value "minecraft:glowstone"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_5 set value "minecraft:glowstone"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_6 set value "minecraft:glowstone"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_7 set value "minecraft:crying_obsidian"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_8 set value "minecraft:crying_obsidian"
execute if score type craftle_table matches 19 run data modify storage craftle:answer craft_9 set value "minecraft:crying_obsidian"

#磁石
execute if score type craftle_table matches 20 run data modify storage craftle:answer item_ans set value "block.minecraft.lodestone"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_1 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_2 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_3 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_4 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_5 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_6 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_7 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_8 set value "minecraft:chiseled_stone_bricks"
execute if score type craftle_table matches 20 run data modify storage craftle:answer craft_9 set value "minecraft:chiseled_stone_bricks"

#烟熏炉
execute if score type craftle_table matches 21 run data modify storage craftle:answer item_ans set value "block.minecraft.smoker"
execute if score type craftle_table matches 21 run data modify storage craftle:answer craft_2 set value "#minecraft:logs"
execute if score type craftle_table matches 21 run data modify storage craftle:answer craft_4 set value "#minecraft:logs"
execute if score type craftle_table matches 21 run data modify storage craftle:answer craft_5 set value "minecraft:furnace"
execute if score type craftle_table matches 21 run data modify storage craftle:answer craft_6 set value "#minecraft:logs"
execute if score type craftle_table matches 21 run data modify storage craftle:answer craft_8 set value "#minecraft:logs"

#高炉
execute if score type craftle_table matches 22 run data modify storage craftle:answer item_ans set value "container.blast_furnace"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_5 set value "minecraft:furnace"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_7 set value "minecraft:smooth_stone"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_8 set value "minecraft:smooth_stone"
execute if score type craftle_table matches 22 run data modify storage craftle:answer craft_9 set value "minecraft:smooth_stone"

#铁砧
execute if score type craftle_table matches 23 run data modify storage craftle:answer item_ans set value "block.minecraft.anvil"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_1 set value "minecraft:iron_block"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_2 set value "minecraft:iron_block"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_3 set value "minecraft:iron_block"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_5 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_7 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_8 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 23 run data modify storage craftle:answer craft_9 set value "minecraft:iron_ingot"

#指南针
execute if score type craftle_table matches 24 run data modify storage craftle:answer item_ans set value "item.minecraft.compass"
execute if score type craftle_table matches 24 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 24 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 24 run data modify storage craftle:answer craft_5 set value "minecraft:redstone"
execute if score type craftle_table matches 24 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 24 run data modify storage craftle:answer craft_8 set value "minecraft:iron_ingot"

#钟
execute if score type craftle_table matches 25 run data modify storage craftle:answer item_ans set value "block.minecraft.bell"
execute if score type craftle_table matches 25 run data modify storage craftle:answer craft_2 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 25 run data modify storage craftle:answer craft_4 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 25 run data modify storage craftle:answer craft_5 set value "minecraft:redstone"
execute if score type craftle_table matches 25 run data modify storage craftle:answer craft_6 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 25 run data modify storage craftle:answer craft_8 set value "minecraft:gold_ingot"

#铁轨
execute if score type craftle_table matches 26 run data modify storage craftle:answer item_ans set value "block.minecraft.rail"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_7 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 26 run data modify storage craftle:answer craft_9 set value "minecraft:iron_ingot"

#充能铁轨
execute if score type craftle_table matches 27 run data modify storage craftle:answer item_ans set value "block.minecraft.powered_rail"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_1 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_3 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_4 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_6 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_7 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"
execute if score type craftle_table matches 27 run data modify storage craftle:answer craft_9 set value "minecraft:gold_ingot"

#探测铁轨
execute if score type craftle_table matches 28 run data modify storage craftle:answer item_ans set value "block.minecraft.detector_rail"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_5 set value "minecraft:stone_pressure_plate"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_7 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"
execute if score type craftle_table matches 28 run data modify storage craftle:answer craft_9 set value "minecraft:iron_ingot"

#激活铁轨
execute if score type craftle_table matches 29 run data modify storage craftle:answer item_ans set value "block.minecraft.activator_rail"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_5 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_7 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_8 set value "minecraft:stick"
execute if score type craftle_table matches 29 run data modify storage craftle:answer craft_9 set value "minecraft:iron_ingot"

#白色羊毛画
execute if score type craftle_table matches 30 run data modify storage craftle:answer item_ans set value "entity.minecraft.painting"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_1 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_5 set value "#minecraft:wool"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_6 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_7 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_8 set value "minecraft:stick"
execute if score type craftle_table matches 30 run data modify storage craftle:answer craft_9 set value "minecraft:stick"

#物品展示框
execute if score type craftle_table matches 31 run data modify storage craftle:answer item_ans set value "item.minecraft.item_frame"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_1 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_5 set value "minecraft:leather"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_6 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_7 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_8 set value "minecraft:stick"
execute if score type craftle_table matches 31 run data modify storage craftle:answer craft_9 set value "minecraft:stick"

#白色旗帜
execute if score type craftle_table matches 32 run data modify storage craftle:answer item_ans set value "block.minecraft.white_banner"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_1 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_2 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_3 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_4 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_5 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_6 set value "#minecraft:wool"
execute if score type craftle_table matches 32 run data modify storage craftle:answer craft_8 set value "minecraft:stick"

#遮光玻璃
execute if score type craftle_table matches 33 run data modify storage craftle:answer item_ans set value "block.minecraft.tinted_glass"
execute if score type craftle_table matches 33 run data modify storage craftle:answer craft_2 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 33 run data modify storage craftle:answer craft_4 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 33 run data modify storage craftle:answer craft_5 set value "minecraft:glass"
execute if score type craftle_table matches 33 run data modify storage craftle:answer craft_6 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 33 run data modify storage craftle:answer craft_8 set value "minecraft:amethyst_shard"

#末地水晶
execute if score type craftle_table matches 34 run data modify storage craftle:answer item_ans set value "entity.minecraft.end_crystal"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_1 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_2 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_3 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_4 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_5 set value "minecraft:ender_eye"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_6 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_7 set value "minecraft:glass"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_8 set value "minecraft:ghast_tear"
execute if score type craftle_table matches 34 run data modify storage craftle:answer craft_9 set value "minecraft:glass"

#木桶
execute if score type craftle_table matches 35 run data modify storage craftle:answer item_ans set value "block.minecraft.barrel"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_2 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_8 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 35 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#灯笼
execute if score type craftle_table matches 36 run data modify storage craftle:answer item_ans set value "block.minecraft.lantern"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_1 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_2 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_3 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_4 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_5 set value "minecraft:torch"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_6 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_7 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_8 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 36 run data modify storage craftle:answer craft_9 set value "minecraft:iron_nugget"

#煤炭营火
execute if score type craftle_table matches 37 run data modify storage craftle:answer item_ans set value "block.minecraft.campfire"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_5 set value "#craftle:coal"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_6 set value "minecraft:stick"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_7 set value "#minecraft:logs"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_8 set value "#minecraft:logs"
execute if score type craftle_table matches 37 run data modify storage craftle:answer craft_9 set value "#minecraft:logs"

#灵魂营火（灵魂沙）
execute if score type craftle_table matches 38 run data modify storage craftle:answer item_ans set value "block.minecraft.soul_campfire"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_5 set value "#craftle:soul_block"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_6 set value "minecraft:stick"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_7 set value "#minecraft:logs"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_8 set value "#minecraft:logs"
execute if score type craftle_table matches 38 run data modify storage craftle:answer craft_9 set value "#minecraft:logs"

#悬挂式橡木告示牌
execute if score type craftle_table matches 39 run data modify storage craftle:answer item_ans set value "block.minecraft.oak_hanging_sign"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_1 set value "minecraft:iron_chain"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_3 set value "minecraft:iron_chain"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_4 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_5 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_6 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_7 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_8 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 39 run data modify storage craftle:answer craft_9 set value "#craftle:stripped_logs"

#铜箱子
execute if score type craftle_table matches 40 run data modify storage craftle:answer item_ans set value "block.minecraft.copper_chest"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_1 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_2 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_3 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_4 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_5 set value "minecraft:chest"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_6 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_7 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_8 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 40 run data modify storage craftle:answer craft_9 set value "minecraft:copper_ingot"

#蜜箱
execute if score type craftle_table matches 41 run data modify storage craftle:answer item_ans set value "block.minecraft.beehive"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_4 set value "minecraft:honeycomb"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_5 set value "minecraft:honeycomb"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_6 set value "minecraft:honeycomb"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 41 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#展示架
execute if score type craftle_table matches 42 run data modify storage craftle:answer item_ans set value "block.minecraft.dark_oak_shelf"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_1 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_2 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_3 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_7 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_8 set value "#craftle:stripped_logs"
execute if score type craftle_table matches 42 run data modify storage craftle:answer craft_9 set value "#craftle:stripped_logs"

#铜灯笼
execute if score type craftle_table matches 43 run data modify storage craftle:answer item_ans set value "block.minecraft.copper_lantern"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_1 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_2 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_3 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_4 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_5 set value "minecraft:copper_torch"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_6 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_7 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_8 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 43 run data modify storage craftle:answer craft_9 set value "minecraft:copper_nugget"

#灵魂灯笼
execute if score type craftle_table matches 44 run data modify storage craftle:answer item_ans set value "block.minecraft.soul_lantern"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_1 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_2 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_3 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_4 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_5 set value "minecraft:soul_torch"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_6 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_7 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_8 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 44 run data modify storage craftle:answer craft_9 set value "minecraft:iron_nugget"

#漏斗
execute if score type craftle_table matches 45 run data modify storage craftle:answer item_ans set value "block.minecraft.hopper"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_5 set value "minecraft:chest"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 45 run data modify storage craftle:answer craft_8 set value "minecraft:iron_ingot"

#合成器
execute if score type craftle_table matches 46 run data modify storage craftle:answer item_ans set value "block.minecraft.crafter"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_1 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_2 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_3 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_4 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_5 set value "minecraft:crafting_table"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_6 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_7 set value "minecraft:redstone"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_8 set value "minecraft:dropper"
execute if score type craftle_table matches 46 run data modify storage craftle:answer craft_9 set value "minecraft:redstone"

#蛋糕
execute if score type craftle_table matches 47 run data modify storage craftle:answer item_ans set value "block.minecraft.cake"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_1 set value "minecraft:milk_bucket"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_2 set value "minecraft:milk_bucket"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_3 set value "minecraft:milk_bucket"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_4 set value "minecraft:sugar"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_5 set value "#craftle:eggs"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_6 set value "minecraft:sugar"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_7 set value "minecraft:wheat"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_8 set value "minecraft:dropper"
execute if score type craftle_table matches 47 run data modify storage craftle:answer craft_9 set value "minecraft:wheat"

#金苹果
execute if score type craftle_table matches 48 run data modify storage craftle:answer item_ans set value "item.minecraft.golden_apple"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_1 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_2 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_3 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_4 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_5 set value "minecraft:apple"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_6 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_7 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_8 set value "minecraft:gold_ingot"
execute if score type craftle_table matches 48 run data modify storage craftle:answer craft_9 set value "minecraft:gold_ingot"

#金胡萝卜
execute if score type craftle_table matches 49 run data modify storage craftle:answer item_ans set value "item.minecraft.golden_carrot"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_1 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_2 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_3 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_4 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_5 set value "minecraft:carrot"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_6 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_7 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_8 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 49 run data modify storage craftle:answer craft_9 set value "minecraft:gold_nugget"

#书架
execute if score type craftle_table matches 50 run data modify storage craftle:answer item_ans set value "block.minecraft.bookshelf"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_4 set value "minecraft:book"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_5 set value "minecraft:book"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_6 set value "minecraft:book"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 50 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#石砖
execute if score type craftle_table matches 51 run data modify storage craftle:answer item_ans set value "block.minecraft.stone_bricks"
execute if score type craftle_table matches 51 run data modify storage craftle:answer craft_4 set value "minecraft:stone"
execute if score type craftle_table matches 51 run data modify storage craftle:answer craft_5 set value "minecraft:stone"
execute if score type craftle_table matches 51 run data modify storage craftle:answer craft_7 set value "minecraft:stone"
execute if score type craftle_table matches 51 run data modify storage craftle:answer craft_8 set value "minecraft:stone"

#南瓜灯
execute if score type craftle_table matches 52 run data modify storage craftle:answer item_ans set value "block.minecraft.jack_o_lantern"
execute if score type craftle_table matches 52 run data modify storage craftle:answer craft_5 set value "minecraft:torch"
execute if score type craftle_table matches 52 run data modify storage craftle:answer craft_8 set value "minecraft:carved_pumpkin"

#白色染色玻璃
execute if score type craftle_table matches 53 run data modify storage craftle:answer item_ans set value "block.minecraft.white_stained_glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_1 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_2 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_3 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_4 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_5 set value "#craftle:dye"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_6 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_7 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_8 set value "minecraft:glass"
execute if score type craftle_table matches 53 run data modify storage craftle:answer craft_9 set value "minecraft:glass"

#闪长岩
execute if score type craftle_table matches 54 run data modify storage craftle:answer item_ans set value "block.minecraft.diorite"
execute if score type craftle_table matches 54 run data modify storage craftle:answer craft_4 set value "minecraft:cobblestone"
execute if score type craftle_table matches 54 run data modify storage craftle:answer craft_5 set value "minecraft:quartz"
execute if score type craftle_table matches 54 run data modify storage craftle:answer craft_7 set value "minecraft:quartz"
execute if score type craftle_table matches 54 run data modify storage craftle:answer craft_8 set value "minecraft:cobblestone"

#砂土
execute if score type craftle_table matches 55 run data modify storage craftle:answer item_ans set value "block.minecraft.coarse_dirt"
execute if score type craftle_table matches 55 run data modify storage craftle:answer craft_4 set value "minecraft:dirt"
execute if score type craftle_table matches 55 run data modify storage craftle:answer craft_5 set value "minecraft:gravel"
execute if score type craftle_table matches 55 run data modify storage craftle:answer craft_7 set value "minecraft:gravel"
execute if score type craftle_table matches 55 run data modify storage craftle:answer craft_8 set value "minecraft:dirt"

#白色陶瓦
execute if score type craftle_table matches 56 run data modify storage craftle:answer item_ans set value "block.minecraft.white_terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_1 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_2 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_3 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_4 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_5 set value "#craftle:dye"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_6 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_7 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_8 set value "minecraft:terracotta"
execute if score type craftle_table matches 56 run data modify storage craftle:answer craft_9 set value "minecraft:terracotta"

#白色床
execute if score type craftle_table matches 57 run data modify storage craftle:answer item_ans set value "block.minecraft.white_bed"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_4 set value "#minecraft:wool"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_5 set value "#minecraft:wool"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_6 set value "#minecraft:wool"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 57 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#橡木告示牌
execute if score type craftle_table matches 58 run data modify storage craftle:answer item_ans set value "block.minecraft.oak_sign"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_2 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 58 run data modify storage craftle:answer craft_8 set value "minecraft:stick"

#白色玻璃板
execute if score type craftle_table matches 59 run data modify storage craftle:answer item_ans set value "block.minecraft.white_stained_glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_1 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_2 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_3 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_4 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_5 set value "#craftle:dye"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_6 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_7 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_8 set value "minecraft:glass_pane"
execute if score type craftle_table matches 59 run data modify storage craftle:answer craft_9 set value "minecraft:glass_pane"

#木栅栏
execute if score type craftle_table matches 60 run data modify storage craftle:answer item_ans set value "block.minecraft.oak_fence"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_7 set value "#minecraft:planks"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_8 set value "minecraft:stick"
execute if score type craftle_table matches 60 run data modify storage craftle:answer craft_9 set value "#minecraft:planks"

#下界砖栅栏
execute if score type craftle_table matches 61 run data modify storage craftle:answer item_ans set value "block.minecraft.nether_brick_fence"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_4 set value "minecraft:nether_bricks"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_5 set value "minecraft:nether_brick"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_6 set value "minecraft:nether_bricks"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_7 set value "minecraft:nether_bricks"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_8 set value "minecraft:nether_brick"
execute if score type craftle_table matches 61 run data modify storage craftle:answer craft_9 set value "minecraft:nether_bricks"

# 62 铜链（Copper Chain）
execute if score type craftle_table matches 62 run data modify storage craftle:answer item_ans set value "block.minecraft.copper_chain"
execute if score type craftle_table matches 62 run data modify storage craftle:answer craft_2 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 62 run data modify storage craftle:answer craft_5 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 62 run data modify storage craftle:answer craft_8 set value "minecraft:copper_nugget"

# 63 铁链（Chain）
execute if score type craftle_table matches 63 run data modify storage craftle:answer item_ans set value "block.minecraft.chain"
execute if score type craftle_table matches 63 run data modify storage craftle:answer craft_2 set value "minecraft:iron_nugget"
execute if score type craftle_table matches 63 run data modify storage craftle:answer craft_5 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 63 run data modify storage craftle:answer craft_8 set value "minecraft:iron_nugget"

# 64 蜡烛（Candle）
execute if score type craftle_table matches 64 run data modify storage craftle:answer item_ans set value "block.minecraft.candle"
execute if score type craftle_table matches 64 run data modify storage craftle:answer craft_2 set value "minecraft:string"
execute if score type craftle_table matches 64 run data modify storage craftle:answer craft_5 set value "minecraft:bee_wax"

# 65 灵魂火把（Soul Torch）
execute if score type craftle_table matches 65 run data modify storage craftle:answer item_ans set value "block.minecraft.soul_torch"
execute if score type craftle_table matches 65 run data modify storage craftle:answer craft_2 set value "minecraft:coal"
execute if score type craftle_table matches 65 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 65 run data modify storage craftle:answer craft_8 set value "minecraft:soul_sand"

# 66 铜火把（Copper Torch）
execute if score type craftle_table matches 66 run data modify storage craftle:answer item_ans set value "block.minecraft.copper_torch"
execute if score type craftle_table matches 66 run data modify storage craftle:answer craft_2 set value "minecraft:copper_nugget"
execute if score type craftle_table matches 66 run data modify storage craftle:answer craft_5 set value "minecraft:coal"
execute if score type craftle_table matches 66 run data modify storage craftle:answer craft_8 set value "minecraft:stick"

# 67 橡木栅栏门（Oak Fence Gate）
execute if score type craftle_table matches 67 run data modify storage craftle:answer item_ans set value "block.minecraft.oak_fence_gate"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_6 set value "minecraft:stick"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_7 set value "minecraft:stick"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"
execute if score type craftle_table matches 67 run data modify storage craftle:answer craft_9 set value "minecraft:stick"

# 68 红石中继器（Redstone Repeater）
execute if score type craftle_table matches 68 run data modify storage craftle:answer item_ans set value "block.minecraft.repeater"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_4 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_5 set value "minecraft:redstone"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_6 set value "minecraft:redstone_torch"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_7 set value "minecraft:stone"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_8 set value "minecraft:stone"
execute if score type craftle_table matches 68 run data modify storage craftle:answer craft_9 set value "minecraft:stone"

# 69 绊线钩（Tripwire Hook）
execute if score type craftle_table matches 69 run data modify storage craftle:answer item_ans set value "block.minecraft.tripwire_hook"
execute if score type craftle_table matches 69 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 69 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 69 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"

# 70 投掷器（Dropper）
execute if score type craftle_table matches 70 run data modify storage craftle:answer item_ans set value "block.minecraft.dropper"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_1 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_2 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_3 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_4 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_6 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_7 set value "minecraft:cobblestone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"
execute if score type craftle_table matches 70 run data modify storage craftle:answer craft_9 set value "minecraft:cobblestone"

# 71 发射器（Dispenser）
execute if score type craftle_table matches 71 run data modify storage craftle:answer item_ans set value "block.minecraft.dispenser"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_1 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_2 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_3 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_4 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_5 set value "minecraft:bow"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_6 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_7 set value "minecraft:cobblestone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"
execute if score type craftle_table matches 71 run data modify storage craftle:answer craft_9 set value "minecraft:cobblestone"

# 72 阳光探测器
execute if score type craftle_table matches 72 run data modify storage craftle:answer item_ans set value "block.minecraft.daylight_detector"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_1 set value "minecraft:glass"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_2 set value "minecraft:glass"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_3 set value "minecraft:glass"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_4 set value "minecraft:quartz"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_5 set value "minecraft:quartz"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_6 set value "minecraft:quartz"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_7 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_8 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 72 run data modify storage craftle:answer craft_9 set value "#minecraft:wooden_slabs"

# 73 标靶
execute if score type craftle_table matches 73 run data modify storage craftle:answer item_ans set value "block.minecraft.target"
execute if score type craftle_table matches 73 run data modify storage craftle:answer craft_2 set value "minecraft:redstone"
execute if score type craftle_table matches 73 run data modify storage craftle:answer craft_4 set value "minecraft:redstone"
execute if score type craftle_table matches 73 run data modify storage craftle:answer craft_5 set value "minecraft:hay_block"
execute if score type craftle_table matches 73 run data modify storage craftle:answer craft_6 set value "minecraft:redstone"
execute if score type craftle_table matches 73 run data modify storage craftle:answer craft_8 set value "minecraft:redstone"

# 74 校频幽匿感测体
execute if score type craftle_table matches 74 run data modify storage craftle:answer item_ans set value "block.minecraft.calibrated_sculk_sensor"
execute if score type craftle_table matches 74 run data modify storage craftle:answer craft_2 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 74 run data modify storage craftle:answer craft_4 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 74 run data modify storage craftle:answer craft_5 set value "minecraft:sculk_sensor"
execute if score type craftle_table matches 74 run data modify storage craftle:answer craft_6 set value "minecraft:amethyst_shard"

# 75 蘑菇煲
execute if score type craftle_table matches 75 run data modify storage craftle:answer item_ans set value "item.minecraft.mushroom_stew"
execute if score type craftle_table matches 75 run data modify storage craftle:answer craft_4 set value "minecraft:brown_mushroom"
execute if score type craftle_table matches 75 run data modify storage craftle:answer craft_6 set value "minecraft:red_mushroom"
execute if score type craftle_table matches 75 run data modify storage craftle:answer craft_8 set value "minecraft:bowl"

# 76 曲奇
execute if score type craftle_table matches 76 run data modify storage craftle:answer item_ans set value "item.minecraft.cookie"
execute if score type craftle_table matches 76 run data modify storage craftle:answer craft_4 set value "minecraft:wheat"
execute if score type craftle_table matches 76 run data modify storage craftle:answer craft_5 set value "minecraft:cocoa_beans"
execute if score type craftle_table matches 76 run data modify storage craftle:answer craft_6 set value "minecraft:wheat"

# 77 南瓜派
execute if score type craftle_table matches 77 run data modify storage craftle:answer item_ans set value "item.minecraft.pumpkin_pie"
execute if score type craftle_table matches 77 run data modify storage craftle:answer craft_4 set value "minecraft:pumpkin"
execute if score type craftle_table matches 77 run data modify storage craftle:answer craft_5 set value "minecraft:sugar"
execute if score type craftle_table matches 77 run data modify storage craftle:answer craft_8 set value "#craftle:eggs"

# 78 甜菜汤
execute if score type craftle_table matches 78 run data modify storage craftle:answer item_ans set value "item.minecraft.beetroot_soup"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_1 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_2 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_3 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_4 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_5 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_6 set value "minecraft:beetroot"
execute if score type craftle_table matches 78 run data modify storage craftle:answer craft_8 set value "minecraft:bowl"

# 79 兔肉煲
execute if score type craftle_table matches 79 run data modify storage craftle:answer item_ans set value "item.minecraft.rabbit_stew"
execute if score type craftle_table matches 79 run data modify storage craftle:answer craft_4 set value "minecraft:cooked_rabbit"
execute if score type craftle_table matches 79 run data modify storage craftle:answer craft_5 set value "minecraft:carrot"
execute if score type craftle_table matches 79 run data modify storage craftle:answer craft_6 set value "minecraft:baked_potato"
execute if score type craftle_table matches 79 run data modify storage craftle:answer craft_7 set value "minecraft:red_mushroom"
execute if score type craftle_table matches 79 run data modify storage craftle:answer craft_8 set value "minecraft:bowl"

# 80 蜂蜜瓶
execute if score type craftle_table matches 80 run data modify storage craftle:answer item_ans set value "item.minecraft.honey_bottle"
execute if score type craftle_table matches 80 run data modify storage craftle:answer craft_4 set value "minecraft:glass_bottle"
execute if score type craftle_table matches 80 run data modify storage craftle:answer craft_5 set value "minecraft:glass_bottle"
execute if score type craftle_table matches 80 run data modify storage craftle:answer craft_6 set value "minecraft:honey_block"
execute if score type craftle_table matches 80 run data modify storage craftle:answer craft_7 set value "minecraft:glass_bottle"
execute if score type craftle_table matches 80 run data modify storage craftle:answer craft_8 set value "minecraft:glass_bottle"

# 81 栓绳
execute if score type craftle_table matches 81 run data modify storage craftle:answer item_ans set value "item.minecraft.lead"
execute if score type craftle_table matches 81 run data modify storage craftle:answer craft_1 set value "minecraft:string"
execute if score type craftle_table matches 81 run data modify storage craftle:answer craft_2 set value "minecraft:string"
execute if score type craftle_table matches 81 run data modify storage craftle:answer craft_4 set value "minecraft:string"
execute if score type craftle_table matches 81 run data modify storage craftle:answer craft_5 set value "minecraft:string"
execute if score type craftle_table matches 81 run data modify storage craftle:answer craft_9 set value "minecraft:string"

# 82 望远镜
execute if score type craftle_table matches 82 run data modify storage craftle:answer item_ans set value "item.minecraft.spyglass"
execute if score type craftle_table matches 82 run data modify storage craftle:answer craft_2 set value "minecraft:amethyst_shard"
execute if score type craftle_table matches 82 run data modify storage craftle:answer craft_5 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 82 run data modify storage craftle:answer craft_8 set value "minecraft:copper_ingot"

# 83 钓鱼竿
execute if score type craftle_table matches 83 run data modify storage craftle:answer item_ans set value "item.minecraft.fishing_rod"
execute if score type craftle_table matches 83 run data modify storage craftle:answer craft_3 set value "minecraft:stick"
execute if score type craftle_table matches 83 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 83 run data modify storage craftle:answer craft_6 set value "minecraft:string"
execute if score type craftle_table matches 83 run data modify storage craftle:answer craft_7 set value "minecraft:stick"
execute if score type craftle_table matches 83 run data modify storage craftle:answer craft_9 set value "minecraft:string"

# 84 刷子
execute if score type craftle_table matches 84 run data modify storage craftle:answer item_ans set value "item.minecraft.brush"
execute if score type craftle_table matches 84 run data modify storage craftle:answer craft_2 set value "minecraft:feather"
execute if score type craftle_table matches 84 run data modify storage craftle:answer craft_5 set value "minecraft:copper_ingot"
execute if score type craftle_table matches 84 run data modify storage craftle:answer craft_8 set value "minecraft:stick"

# 85 盾
execute if score type craftle_table matches 85 run data modify storage craftle:answer item_ans set value "item.minecraft.shield"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_1 set value "#minecraft:planks"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_2 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_3 set value "#minecraft:planks"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_4 set value "#minecraft:planks"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_5 set value "#minecraft:planks"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_6 set value "#minecraft:planks"
execute if score type craftle_table matches 85 run data modify storage craftle:answer craft_8 set value "#minecraft:planks"

# 86 弓
execute if score type craftle_table matches 86 run data modify storage craftle:answer item_ans set value "item.minecraft.bow"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_2 set value "minecraft:stick"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_3 set value "minecraft:string"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_4 set value "minecraft:stick"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_6 set value "minecraft:string"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_8 set value "minecraft:stick"
execute if score type craftle_table matches 86 run data modify storage craftle:answer craft_9 set value "minecraft:string"

# 87 箭
execute if score type craftle_table matches 87 run data modify storage craftle:answer item_ans set value "item.minecraft.arrow"
execute if score type craftle_table matches 87 run data modify storage craftle:answer craft_2 set value "minecraft:flint"
execute if score type craftle_table matches 87 run data modify storage craftle:answer craft_5 set value "minecraft:stick"
execute if score type craftle_table matches 87 run data modify storage craftle:answer craft_8 set value "minecraft:feather"

# 88 光灵箭
execute if score type craftle_table matches 88 run data modify storage craftle:answer item_ans set value "item.minecraft.spectral_arrow"
execute if score type craftle_table matches 88 run data modify storage craftle:answer craft_2 set value "minecraft:glowstone_dust"
execute if score type craftle_table matches 88 run data modify storage craftle:answer craft_4 set value "minecraft:glowstone_dust"
execute if score type craftle_table matches 88 run data modify storage craftle:answer craft_5 set value "minecraft:arrow"
execute if score type craftle_table matches 88 run data modify storage craftle:answer craft_6 set value "minecraft:glowstone_dust"
execute if score type craftle_table matches 88 run data modify storage craftle:answer craft_8 set value "minecraft:glowstone_dust"

# 89 闪烁的西瓜片
execute if score type craftle_table matches 89 run data modify storage craftle:answer item_ans set value "item.minecraft.glistering_melon_slice"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_1 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_2 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_3 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_4 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_5 set value "minecraft:melon_slice"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_6 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_7 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_8 set value "minecraft:gold_nugget"
execute if score type craftle_table matches 89 run data modify storage craftle:answer craft_9 set value "minecraft:gold_nugget"

# 90 发酵蜘蛛眼
execute if score type craftle_table matches 90 run data modify storage craftle:answer item_ans set value "item.minecraft.fermented_spider_eye"
execute if score type craftle_table matches 90 run data modify storage craftle:answer craft_4 set value "minecraft:brown_mushroom"
execute if score type craftle_table matches 90 run data modify storage craftle:answer craft_5 set value "minecraft:sugar"
execute if score type craftle_table matches 90 run data modify storage craftle:answer craft_8 set value "minecraft:spider_eye"

# 91 酿造台
execute if score type craftle_table matches 91 run data modify storage craftle:answer item_ans set value "item.minecraft.brewing_stand"
execute if score type craftle_table matches 91 run data modify storage craftle:answer craft_5 set value "minecraft:blaze_rod"
execute if score type craftle_table matches 91 run data modify storage craftle:answer craft_7 set value "minecraft:cobblestone"
execute if score type craftle_table matches 91 run data modify storage craftle:answer craft_8 set value "minecraft:cobblestone"
execute if score type craftle_table matches 91 run data modify storage craftle:answer craft_9 set value "minecraft:cobblestone"

# 92 炼药锅
execute if score type craftle_table matches 92 run data modify storage craftle:answer item_ans set value "item.minecraft.cauldron"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_1 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_3 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_4 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_6 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_7 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_8 set value "minecraft:iron_ingot"
execute if score type craftle_table matches 92 run data modify storage craftle:answer craft_9 set value "minecraft:iron_ingot"

# 93 书
execute if score type craftle_table matches 93 run data modify storage craftle:answer item_ans set value "item.minecraft.book"
execute if score type craftle_table matches 93 run data modify storage craftle:answer craft_4 set value "minecraft:paper"
execute if score type craftle_table matches 93 run data modify storage craftle:answer craft_5 set value "minecraft:paper"
execute if score type craftle_table matches 93 run data modify storage craftle:answer craft_7 set value "minecraft:paper"
execute if score type craftle_table matches 93 run data modify storage craftle:answer craft_8 set value "minecraft:leather"

# 94 空地图
execute if score type craftle_table matches 94 run data modify storage craftle:answer item_ans set value "item.minecraft.map"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_1 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_2 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_3 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_4 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_5 set value "minecraft:compass"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_6 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_7 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_8 set value "minecraft:paper"
execute if score type craftle_table matches 94 run data modify storage craftle:answer craft_9 set value "minecraft:paper"

# 95 火焰弹
execute if score type craftle_table matches 95 run data modify storage craftle:answer item_ans set value "item.minecraft.fire_charge"
execute if score type craftle_table matches 95 run data modify storage craftle:answer craft_4 set value "minecraft:blaze_powder"
execute if score type craftle_table matches 95 run data modify storage craftle:answer craft_5 set value "minecraft:coal"
execute if score type craftle_table matches 95 run data modify storage craftle:answer craft_8 set value "minecraft:gunpowder"

# 96 书与笔
execute if score type craftle_table matches 96 run data modify storage craftle:answer item_ans set value "item.minecraft.writable_book"
execute if score type craftle_table matches 96 run data modify storage craftle:answer craft_4 set value "minecraft:book"
execute if score type craftle_table matches 96 run data modify storage craftle:answer craft_5 set value "minecraft:ink_sac"
execute if score type craftle_table matches 96 run data modify storage craftle:answer craft_8 set value "minecraft:feather"

# 97 堆肥桶
execute if score type craftle_table matches 97 run data modify storage craftle:answer item_ans set value "block.minecraft.composter"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_1 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_3 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_4 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_6 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_7 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_8 set value "#minecraft:wooden_slabs"
execute if score type craftle_table matches 97 run data modify storage craftle:answer craft_9 set value "#minecraft:wooden_slabs"

# 98 收纳袋
execute if score type craftle_table matches 98 run data modify storage craftle:answer item_ans set value "item.minecraft.bundle"
execute if score type craftle_table matches 98 run data modify storage craftle:answer craft_2 set value "minecraft:tripwire"
execute if score type craftle_table matches 98 run data modify storage craftle:answer craft_5 set value "minecraft:leather"

# 99 白色挽具
execute if score type craftle_table matches 99 run data modify storage craftle:answer item_ans set value "item.minecraft.white_harness"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_1 set value "minecraft:leather"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_2 set value "minecraft:leather"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_3 set value "minecraft:leather"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_4 set value "minecraft:glass"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_5 set value "#minecraft:wool"
execute if score type craftle_table matches 99 run data modify storage craftle:answer craft_6 set value "minecraft:glass"

# 100 安山岩
execute if score type craftle_table matches 100 run data modify storage craftle:answer item_ans set value "block.minecraft.granite"
execute if score type craftle_table matches 100 run data modify storage craftle:answer craft_4 set value "minecraft:diorite"
execute if score type craftle_table matches 100 run data modify storage craftle:answer craft_5 set value "minecraft:cobblestone"

#饰纹陶罐
execute if score type craftle_table matches 101 run data modify storage craftle:answer item_ans set value "block.minecraft.decorated_pot"
execute if score type craftle_table matches 101 run data modify storage craftle:answer craft_2 set value "minecraft:brick"
execute if score type craftle_table matches 101 run data modify storage craftle:answer craft_4 set value "minecraft:brick"
execute if score type craftle_table matches 101 run data modify storage craftle:answer craft_6 set value "minecraft:brick"
execute if score type craftle_table matches 101 run data modify storage craftle:answer craft_8 set value "minecraft:brick"




#如果配方对应位置为空，则不用写
#execute if score type craftle_table matches - run data modify storage craftle:answer item_ans set value "物品名"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_1 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_2 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_3 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_4 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_5 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_6 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_7 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_8 set value "minecraft:"
#execute if score type craftle_table matches - run data modify storage craftle:answer craft_9 set value "minecraft:"

#参考合成表：
#1 2 3
#4 5 6
#7 8 9