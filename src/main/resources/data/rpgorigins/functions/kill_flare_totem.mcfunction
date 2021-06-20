execute as @e[tag=flareTotem,type=armor_stand,limit=1] if score @s flareTotemID = @p flareTotemID at @s run particle minecraft:lava ~ ~1 ~ 0.8 0.5 0.8 0 50
execute as @e[tag=flareTotem,type=armor_stand,limit=1] if score @s flareTotemID = @p flareTotemID run kill @s
scoreboard players reset @s flareTotemID
tag @s remove totemSelf