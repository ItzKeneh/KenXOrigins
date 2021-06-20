execute as @e[tag=,type=armor_stand] if score @s warpID = @p warpID at @s run forceload remove ~ ~ ~ ~
execute as @e[tag=warpStand,type=armor_stand] if score @s warpID = @p warpID run kill @s
scoreboard players reset @s warpID