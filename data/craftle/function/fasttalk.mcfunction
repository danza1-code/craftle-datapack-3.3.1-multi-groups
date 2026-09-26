scoreboard players set temp craftle_ifBlock 0
data modify storage craftle:temp teams set from entity @s Tags[0]
data modify storage craftle:temp Sid set string entity @s SelectedItem.id 10
function craftle:is_block with storage craftle:temp
function craftle:fasttalk_output with storage craftle:temp
#execute if score temp craftle_ifBlock matches 1 run say "block"
#execute if score temp craftle_ifBlock matches 0 run say "item"