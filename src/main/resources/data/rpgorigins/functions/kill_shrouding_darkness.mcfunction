execute as @e[tag=shroudingAnchor,type=armor_stand] if score @s shroudingDark = @p shroudingDark at @s run forceload remove ~ ~ ~ ~
execute as @e[tag=shroudingAnchor,type=armor_stand] if score @s shroudingDark = @p shroudingDark run kill @s
scoreboard players reset @s shroudingDark
tag @s remove darknessSelf