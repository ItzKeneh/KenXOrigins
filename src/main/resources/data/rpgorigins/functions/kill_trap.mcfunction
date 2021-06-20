execute as @e[tag=goblinTrap,type=armor_stand] if score @s trapID = @p[team=goblins] trapID at @s run forceload remove ~ ~ ~ ~
execute as @e[tag=goblinTrap,type=armor_stand] if score @s trapID = @p[team=goblins] trapID run kill @s
scoreboard players reset @s trapID