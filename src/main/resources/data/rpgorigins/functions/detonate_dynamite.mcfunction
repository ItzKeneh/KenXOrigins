execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s unless block ~ ~2 ~ bedrock run fill ~1 ~2 ~1 ~-1 ~4 ~-1 air destroy
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s unless block ~ ~1 ~ bedrock run fill ~1 ~1 ~1 ~-1 ~3 ~-1 air destroy
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s unless block ~ ~ ~ bedrock run fill ~1 ~ ~1 ~-1 ~2 ~-1 air destroy
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s unless block ~ ~-1 ~ bedrock run fill ~1 ~-1 ~1 ~-1 ~1 ~-1 air destroy
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s run particle explosion
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID at @s run playsound minecraft:entity.generic.explode master @a[distance=..12] ~ ~ ~ 1 1.3
execute as @e[tag=dynamite,type=armor_stand] if score @s dynamiteID = @p dynamiteID run kill @s
scoreboard players reset @s dynamiteID