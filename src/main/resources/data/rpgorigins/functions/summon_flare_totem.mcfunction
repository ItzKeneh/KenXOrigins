execute at @s run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{Count:1,id:"player_head",tag:{SkullOwner:{Id:[I;506271496,-186691926,-1902844364,1414935678],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzM2ODdlMjVjNjMyYmNlOGFhNjFlMGQ2NGMyNGU2OTRjM2VlYTYyOWVhOTQ0ZjRjZjMwZGNmYjRmYmNlMDcxIn19fQ=="}]}}}}],NoGravity:1,Tags:["temp","flareTotem"],Marker:1,Invisible:1,Invulnerable:1}
scoreboard players operation @s flareTotemID += #fakeMax flareTotemID
scoreboard players operation @e[tag=flareTotem,tag=temp,limit=1] flareTotemID += #fakeMax flareTotemID
execute as @e[type=minecraft:armor_stand,tag=temp,tag=flareTotem,limit=1] if score @s flareTotemID = #fakeMax flareTotemID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=flareTotem,limit=1] if score @s flareTotemID = #fakeMax flareTotemID run scoreboard players add #fakeMax flareTotemID 1
tag @s add totemSelf
