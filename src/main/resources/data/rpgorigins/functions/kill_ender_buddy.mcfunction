execute as @e[tag=endBuddy,type=enderman] if score @s enderBuddy = @p enderBuddy run kill @s
execute as @e[tag=endBuddy,type=wolf] if score @s enderBuddy = @p enderBuddy run kill @s
scoreboard players reset @s enderBuddy