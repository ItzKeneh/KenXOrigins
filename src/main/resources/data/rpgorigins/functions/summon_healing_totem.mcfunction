execute at @s run summon armor_stand ~ ~ ~ {Tags:["temp","healTotem"],Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{Count:1,id:"player_head",tag:{SkullOwner:{Id:[I;-288562697,30297737,-1181982143,1917041928],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmM4ZmI2MzdkNmUxYTdiYThmYTk3ZWU5ZDI5MTVlODQzZThlYzc5MGQ4YjdiZjYwNDhiZTYyMWVlNGQ1OWZiYSJ9fX0="}]}}}}]}
scoreboard players operation @s healTotemID += #fakeMax healTotemID
scoreboard players operation @e[tag=healTotem,tag=temp,limit=1] healTotemID += #fakeMax healTotemID
execute as @e[type=minecraft:armor_stand,tag=temp,tag=healTotem,limit=1] if score @s healTotemID = #fakeMax healTotemID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=healTotem,limit=1] if score @s healTotemID = #fakeMax healTotemID run scoreboard players add #fakeMax healTotemID 1
