tag @s add darknessSelf
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["temp","shroudingAnchor"],Marker:1,Invisible:1,Invulnerable:1,NoGravity:1}
scoreboard players operation @s shroudingDark += #fakeMax shroudingDark
scoreboard players operation @e[tag=shroudingAnchor,tag=temp,limit=1] shroudingDark += #fakeMax shroudingDark
execute as @e[type=minecraft:armor_stand,tag=temp,tag=shroudingAnchor,limit=1] if score @s shroudingDark = #fakeMax shroudingDark run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=shroudingAnchor,limit=1] if score @s shroudingDark = #fakeMax shroudingDark run scoreboard players add #fakeMax shroudingDark 1

execute as @e[type=minecraft:armor_stand,tag=shroudingAnchor] at @s run forceload add ~ ~ ~ ~