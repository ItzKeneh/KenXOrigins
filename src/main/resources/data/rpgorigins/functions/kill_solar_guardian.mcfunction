execute as @e[tag=solar_guardian,type=sheep,limit=1] if score @s solarID = @p solarID run kill @s
execute as @e[tag=solar_guardian,type=creeper,limit=1] if score @s solarID = @p solarID run kill @s
execute as @e[tag=solar_guardian,type=wolf,limit=1] if score @s solarID = @p solarID run kill @s
execute as @e[tag=solar_guardian,type=area_effect_cloud,limit=1] if score @s solarID = @p solarID run kill @s
execute as @e[tag=solar_guardian,type=horse,limit=1] if score @s solarID = @p solarID run kill @s
scoreboard players reset @s solarID