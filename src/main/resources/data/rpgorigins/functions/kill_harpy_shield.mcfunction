execute as @e[tag=harpyShield,type=armor_stand,limit=1] if score @s harpyID = @p harpyID run kill @s
execute as @e[tag=harpyShield2,type=armor_stand,limit=1] if score @s harpyID = @p harpyID run kill @s
scoreboard players reset @s harpyID