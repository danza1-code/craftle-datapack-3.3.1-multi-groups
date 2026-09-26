$tellraw @a[team=$(teams)] [{text:"§6§l[Craftle]  "},{selector: "@a[tag=check_ans]",color:"yellow"},{translate:"output.message.1"}]

$tellraw @a[team=$(teams)] [{text:"          ■ ",color:$(display11),hover_event:{action:show_text,value:{translate:$(item_11)}}},{text:"■ ",color:$(display12),hover_event:{action:show_text,value:{translate:$(item_12)}}},{text:"■       ",color:$(display13),hover_event:{action:show_text,value:{translate:$(item_13)}}}]
$tellraw @a[team=$(teams)] [{text:"          ■ ",color:$(display21),hover_event:{action:show_text,value:{translate:$(item_21)}}},{text:"■ ",color:$(display22),hover_event:{action:show_text,value:{translate:$(item_22)}}},{text:"■       ",color:$(display23),hover_event:{action:show_text,value:{translate:$(item_23)}}}]
$tellraw @a[team=$(teams)] [{text:"          ■ ",color:$(display31),hover_event:{action:show_text,value:{translate:$(item_31)}}},{text:"■ ",color:$(display32),hover_event:{action:show_text,value:{translate:$(item_32)}}},{text:"■       ",color:$(display33),hover_event:{action:show_text,value:{translate:$(item_33)}}}]
$tellraw @a[team=$(teams)] [{translate:"output.message.2",color:gray}]

#$tellraw @a[team=$(teams)] [{text:"§6§l[Craftle]  "},{selector: "@a[tag=check_ans]",color:"yellow"},{translate:"output.message.1"}]

$tellraw @a[gamemode=spectator] [{text:"          ■ ",color:$(display11),hover_event:{action:show_text,value:{translate:$(item_11)}}},{text:"■ ",color:$(display12),hover_event:{action:show_text,value:{translate:$(item_12)}}},{text:"■       ",color:$(display13),hover_event:{action:show_text,value:{translate:$(item_13)}}}]
$tellraw @a[gamemode=spectator] [{text:"          ■ ",color:$(display21),hover_event:{action:show_text,value:{translate:$(item_21)}}},{text:"■ ",color:$(display22),hover_event:{action:show_text,value:{translate:$(item_22)}}},{text:"■       ",color:$(display23),hover_event:{action:show_text,value:{translate:$(item_23)}}}]
$tellraw @a[gamemode=spectator] [{text:"          ■ ",color:$(display31),hover_event:{action:show_text,value:{translate:$(item_31)}}},{text:"■ ",color:$(display32),hover_event:{action:show_text,value:{translate:$(item_32)}}},{text:"■       ",color:$(display33),hover_event:{action:show_text,value:{translate:$(item_33)}}}]
tellraw @a[gamemode=spectator] [{translate:"output.message.2",color:gray}]