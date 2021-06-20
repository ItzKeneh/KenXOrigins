execute as @e[tag=healTotem,type=armor_stand,limit=1] if score @s healTotemID = @p healTotemID at @s run particle dust 0.4 0.1 0.1 1 ~ ~1 ~ 0.8 0.5 0.8 0 100
execute as @e[tag=healTotem,type=armor_stand,limit=1] if score @s healTotemID = @p healTotemID run kill @s
scoreboard players reset @s healTotemID