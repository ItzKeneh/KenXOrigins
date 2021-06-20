execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["temp","harpyShield"],Marker:1,Invisible:1,Invulnerable:1}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["temp","harpyShield2"],Marker:1,Invisible:1,Invulnerable:1}
scoreboard players operation @s harpyID += #fakeMax harpyID
scoreboard players operation @e[tag=harpyShield,tag=temp,limit=1] harpyID += #fakeMax harpyID
scoreboard players operation @e[tag=harpyShield2,tag=temp,limit=1] harpyID += #fakeMax harpyID
execute as @e[type=minecraft:armor_stand,tag=temp,tag=harpyShield,limit=1] if score @s harpyID = #fakeMax harpyID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=temp,tag=harpyShield2,limit=1] if score @s harpyID = #fakeMax harpyID run tag @s remove tempw
execute as @e[type=minecraft:armor_stand,tag=harpyShield,limit=1] if score @s harpyID = #fakeMax harpyID run scoreboard players add #fakeMax harpyID 1

