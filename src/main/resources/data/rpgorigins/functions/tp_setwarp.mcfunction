execute as @e[tag=warpStand,type=armor_stand] if score @s warpID = @p warpID at @s run tp @p @s
execute at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..5] ~ ~ ~ 1 0.5