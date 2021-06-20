execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["temp","warpStand"],Marker:1,Invisible:1,Invulnerable:1}
scoreboard players operation @s warpID += #fakeMax warpID
scoreboard players operation @e[tag=warpStand,tag=temp,limit=1] warpID += #fakeMax warpID
execute as @e[type=minecraft:armor_stand,tag=temp,tag=warpStand,limit=1] if score @s warpID = #fakeMax warpID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=warpStand,limit=1] if score @s warpID = #fakeMax warpID run scoreboard players add #fakeMax warpID 1

execute as @e[type=minecraft:armor_stand,tag=warpStand] at @s run forceload add ~ ~ ~ ~