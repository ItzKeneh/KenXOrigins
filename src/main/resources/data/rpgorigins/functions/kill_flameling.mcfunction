execute as @e[tag=flameling,type=armor_stand] if score @s flamelingID = @p flamelingID run kill @s
execute as @e[tag=flameling,type=wolf] if score @s flamelingID = @p flamelingID run kill @s
execute as @e[tag=flameling_particle,type=armor_stand] if score @s flamelingID = @p flamelingID run kill @s
scoreboard players reset @s flamelingID