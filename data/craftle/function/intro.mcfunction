
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 310 8 {Tags:["background"],item: {count: 1, id: "minecraft:black_stained_glass_pane"}, item_display: "gui", transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [8.999997f, 8.999998f, 0.9999999f], translation: [0.0f, 0.0f, 0.0f]}, view_range: 2.0f}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 3 310 8 {Tags:["line"],item: {count: 1, id: "minecraft:red_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.1875f, 0.0625f, 4.3125f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.8 8 {Tags:["foreground","color_yellow"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 11 309.8 8 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.8 11 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 11 309.8 11 {Tags:["foreground","color_red"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.8 8 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.8 5 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.8 5 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.8 11 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 11 309.8 5 {Tags:["foreground","color_green"],item: {count: 1, id: "minecraft:white_stained_glass_pane"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 1800 run execute as @e[type=item_display,tag=foreground] at @s run data merge entity @s {start_interpolation: 1,interpolation_duration: 40, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}

execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 11 309.6 11 {Tags:["item","wrong"],item: {count: 1, id: "minecraft:diamond"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}

execute if score intro craftle_DISCOUNT matches 1600 as @e[type=item_display,tag=color_green] at @s run summon minecraft:item_display ~ ~ ~ {Tags:["foreground"],item: {count: 1, id: "minecraft:lime_concrete"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 1600 as @e[type=item_display,tag=color_green] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score intro craftle_DISCOUNT matches 1600 run kill @e[type=item_display,tag=color_green]

execute if score intro craftle_DISCOUNT matches 1500 as @e[type=item_display,tag=color_yellow] at @s run summon minecraft:item_display ~ ~ ~ {Tags:["foreground"],item: {count: 1, id: "minecraft:yellow_concrete"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 1500 as @e[type=item_display,tag=color_yellow] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score intro craftle_DISCOUNT matches 1500 run kill @e[type=item_display,tag=color_yellow]

execute if score intro craftle_DISCOUNT matches 1400 as @e[type=item_display,tag=color_red] at @s run summon minecraft:item_display ~ ~ ~ {Tags:["foreground"],item: {count: 1, id: "minecraft:red_concrete"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 1400 as @e[type=item_display,tag=color_red] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score intro craftle_DISCOUNT matches 1400 run kill @e[type=item_display,tag=color_red]


execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.6 5 {Tags:["item"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.6 8 {Tags:["item","wrong"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 8 309.6 11 {Tags:["item"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.6 5 {Tags:["item"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.6 8 {Tags:["item"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 2000 run summon minecraft:item_display 5 309.6 11 {Tags:["item"],item: {count: 1, id: "minecraft:iron_ingot"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0f, 0f, 0f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 1760 run execute as @e[type=item_display,tag=item] at @s run data merge entity @s {start_interpolation: 1,interpolation_duration: 40, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}

execute if score intro craftle_DISCOUNT matches 2000 run tellraw @a [{translate:"tip.message.1", color:"yellow"}]
execute if score intro craftle_DISCOUNT matches 1960 run tellraw @a [{translate:"tip.message.2"}]
execute if score intro craftle_DISCOUNT matches 1920 run tellraw @a [{translate:"tip.message.3"}]
execute if score intro craftle_DISCOUNT matches 1880 run tellraw @a [{translate:"tip.message.4"}]
execute if score intro craftle_DISCOUNT matches 1840 run tellraw @a [{translate:"tip.message.5"}]
execute if score intro craftle_DISCOUNT matches 1800 run tellraw @a [{translate:"tip.message.6"}]
execute if score intro craftle_DISCOUNT matches 1700 run tellraw @a [{translate:"tip.message.7"}]
execute if score intro craftle_DISCOUNT matches 1600 run tellraw @a [{translate:"tip.message.8"}]
execute if score intro craftle_DISCOUNT matches 1500 run tellraw @a [{translate:"tip.message.9"}]
execute if score intro craftle_DISCOUNT matches 1400 run tellraw @a [{translate:"tip.message.10"}]
execute if score intro craftle_DISCOUNT matches 1300 run tellraw @a [{translate:"tip.message.11"}]
execute if score intro craftle_DISCOUNT matches 1200 run tellraw @a [{translate:"tip.message.12"}]
execute if score intro craftle_DISCOUNT matches 1100 run tellraw @a [{translate:"tip.message.13"}]
execute if score intro craftle_DISCOUNT matches 1050 run tellraw @a [{translate:"tip.message.14"}]
execute if score intro craftle_DISCOUNT matches 1000 run tellraw @a [{atlas: "minecraft:items",sprite:"item/diamond"}]
execute if score intro craftle_DISCOUNT matches 1000 run tellraw @a [{atlas: "minecraft:items",sprite:"item/iron_ingot"},{atlas: "minecraft:items",sprite:"item/iron_ingot"},{atlas: "minecraft:items",sprite:"item/iron_ingot"}]
execute if score intro craftle_DISCOUNT matches 1000 run tellraw @a [{atlas: "minecraft:items",sprite:"item/iron_ingot"},{atlas: "minecraft:items",sprite:"item/iron_ingot"},{atlas: "minecraft:items",sprite:"item/iron_ingot"}]
execute if score intro craftle_DISCOUNT matches 900 run tellraw @a [{translate:"tip.message.15"}]
execute if score intro craftle_DISCOUNT matches 800 run tellraw @a [{text:"■ ",color:red},{text:"■ ",color:green},{text:"■",color:green}]
execute if score intro craftle_DISCOUNT matches 800 run tellraw @a [{text:"■ ",color:green},{text:"■ ",color:yellow},{text:"■",color:green}]
execute if score intro craftle_DISCOUNT matches 800 run tellraw @a [{text:"■ ",color:green},{text:"■ ",color:green},{text:"■",color:green}]
execute if score intro craftle_DISCOUNT matches 750 run tellraw @a [{translate:"tip.message.16"}]

execute if score intro craftle_DISCOUNT matches 750 as @e[tag=wrong] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score intro craftle_DISCOUNT matches 750 run kill @e[type=minecraft:item_display,tag=wrong]
execute if score intro craftle_DISCOUNT matches 750 as @e[type=item_display,tag=foreground] at @s run summon minecraft:item_display ~ ~ ~ {Tags:["true"],item: {count: 1, id: "minecraft:lime_concrete"}, transformation: {left_rotation: [-0.70710677f, 0.0f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 0.1f], translation: [0.0f, 0.0f, 0.0f]}}
execute if score intro craftle_DISCOUNT matches 750 run kill @e[type=minecraft:item_display,tag=foreground]

execute if score intro craftle_DISCOUNT matches 700 run tellraw @a [{translate:"tip.message.17"}]
execute if score intro craftle_DISCOUNT matches 650 run tellraw @a [{translate:"tip.message.18"}]
execute if score intro craftle_DISCOUNT matches 630 run tellraw @a [{translate:"tip.message.19",color:"yellow"}]

execute if score intro craftle_DISCOUNT matches 630 as @e[type=item_display] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 20 force
execute if score intro craftle_DISCOUNT matches 630 run kill @e[type=minecraft:item_display]

execute if score intro craftle_DISCOUNT matches 600 run tellraw @a [{translate:"tip.message.20",color:"yellow"}]
execute if score intro craftle_DISCOUNT matches 570 run tellraw @a [{translate:"tip.message.21"}]
execute if score intro craftle_DISCOUNT matches 540 run tellraw @a [{translate:"tip.message.22"}]
execute if score intro craftle_DISCOUNT matches 510 run tellraw @a [{translate:"tip.message.23"}]
execute if score intro craftle_DISCOUNT matches 480 run tellraw @a [{translate:"tip.message.24",color:"yellow"}]

execute if score intro craftle_DISCOUNT matches 2000 as @e[type=item_display,tag=!line] at @s run tp @s ~ ~ ~ 90 ~