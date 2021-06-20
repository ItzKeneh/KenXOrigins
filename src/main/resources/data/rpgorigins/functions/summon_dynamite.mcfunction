execute at @s run summon minecraft:armor_stand ~ ~-1.44 ~ {ArmorItems:[{},{},{},{Count:1,id:"player_head",tag:{SkullOwner:{Id:[I;1031853657,919423726,-2059367205,1418649205],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FmNTk3NzZmMmYwMzQxMmM3YjU5NDdhNjNhMGNmMjgzZDUxZmU2NWFjNmRmN2YyZjg4MmUwODM0NDU2NWU5In19fQ=="}]}}}}],Tags:["temp","dynamite"],Marker:1,Invisible:1,Invulnerable:1,NoGravity:1}
scoreboard players operation @s dynamiteID += #fakeMax dynamiteID
scoreboard players operation @e[tag=dynamite,tag=temp,limit=1] dynamiteID += #fakeMax dynamiteID
execute as @e[type=minecraft:armor_stand,tag=temp,tag=dynamite,limit=1] if score @s dynamiteID = #fakeMax dynamiteID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=dynamite,limit=1] if score @s dynamiteID = #fakeMax dynamiteID run scoreboard players add #fakeMax dynamiteID 1

