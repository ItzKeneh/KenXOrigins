execute as @e[tag=dimensionStand,type=armor_stand] if score @s dimensionHop = @p dimensionHop run tp @p @s
execute as @e[tag=dimensionStand,type=armor_stand] if score @s dimensionHop = @p dimensionHop at @s run forceload remove ~ ~ ~ ~
execute as @e[tag=dimensionStand,type=armor_stand] if score @s dimensionHop = @p dimensionHop run kill @s
scoreboard players reset @s dimensionHop