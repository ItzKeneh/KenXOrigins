#Trap Ticks
execute as @e[tag=goblinTrap,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~

#Harpy Ticks
execute as @e[tag=harpyShield,type=armor_stand] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=harpyShield2,type=armor_stand] at @s run tp @s ~ ~ ~ ~6 ~
execute at @a as @e[tag=harpyShield,type=armor_stand] if score @s harpyID = @p[distance=..4] harpyID run tp @s ~ ~2 ~
execute at @a as @e[tag=harpyShield2,type=armor_stand] if score @s harpyID = @p[distance=..4] harpyID run tp @s ~ ~2 ~
execute as @e[tag=harpyShield,type=minecraft:armor_stand] at @s run particle dust .6 .6 .8 1 ^ ^-1.5 ^.8 0 0 0 0 1 force
execute as @e[tag=harpyShield,type=minecraft:armor_stand] at @s run particle dust .6 .6 .8 1 ^ ^-1.5 ^-.8 0 0 0 0 1 force
execute as @e[tag=harpyShield2,type=minecraft:armor_stand] at @s run particle dust 0.455 0.651 0.804 1 ^ ^-1 ^.5 0 0 0 0 1 force
execute as @e[tag=harpyShield2,type=minecraft:armor_stand] at @s run particle dust 0.455 0.651 0.804 1 ^ ^-1 ^-.5 0 0 0 0 1 force

#Goblin Trap
execute as @e[tag=goblinTrap,type=armor_stand] at @s run effect give @e[team=!goblins,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=..3] slowness 1 4 true
execute as @e[tag=goblinTrap,type=armor_stand] at @s run effect give @e[team=!goblins,type=!arrow,type=!spectral_arrow,type=!armor_stand,type=!area_effect_cloud,distance=..3] blindness 2 0 true
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 2 ~ ~ ~ 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 1.2 ^ ^ ^-2.08 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 1.2 ^ ^ ^-2 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0 0 0 1.2 ^ ^ ^2.08 0 0 0 0 1 force @a[team=goblins]
execute as @e[tag=goblinTrap,type=armor_stand] at @s run particle dust 0.2 0 0 1.2 ^ ^ ^2 0 0 0 0 1 force @a[team=goblins]