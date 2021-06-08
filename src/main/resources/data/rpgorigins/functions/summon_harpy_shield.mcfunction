execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["temp1","harpyShield"],Marker:1,Invisible:1,Invulnerable:1}
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["temp1","harpyShield2"],Marker:1,Invisible:1,Invulnerable:1}
scoreboard players operation @s harpyID += #fakeMax harpyID
scoreboard players operation @e[tag=harpyShield,tag=temp1,limit=1] harpyID += #fakeMax harpyID
scoreboard players operation @e[tag=harpyShield2,tag=temp1,limit=1] harpyID += #fakeMax harpyID
execute as @e[type=minecraft:armor_stand,tag=temp1,tag=harpyShield,limit=1] if score @s harpyID = #fakeMax harpyID run tag @s remove temp1
execute as @e[type=minecraft:armor_stand,tag=temp1,tag=harpyShield2,limit=1] if score @s harpyID = #fakeMax harpyID run tag @s remove temp1w
execute as @e[type=minecraft:armor_stand,tag=harpyShield,limit=1] if score @s harpyID = #fakeMax harpyID run scoreboard players add #fakeMax harpyID 1

