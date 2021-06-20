execute at @s run summon minecraft:armor_stand ~ ~1 ~ {Tags:["temp","dimensionStand"],Marker:1,Invisible:1,Invulnerable:1,NoGravity:1}
scoreboard players operation @s dimensionHop += #fakeMax dimensionHop
scoreboard players operation @e[tag=dimensionStand,tag=temp,limit=1] dimensionHop += #fakeMax dimensionHop
execute as @e[type=minecraft:armor_stand,tag=temp,tag=dimensionStand,limit=1] if score @s dimensionHop = #fakeMax dimensionHop run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=dimensionStand,limit=1] if score @s dimensionHop = #fakeMax dimensionHop run scoreboard players add #fakeMax dimensionHop 1
execute as @e[type=minecraft:armor_stand,tag=dimensionStand] at @s run forceload add ~ ~ ~ ~

execute as @s at @s run function rpgorigins:safe_tp_try