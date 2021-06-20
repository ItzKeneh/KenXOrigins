summon minecraft:wolf ~ ~1 ~ {Attributes:[{Name:"generic.attack_damage",Base:7}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1}],Tags:["flameling","temp"]}
summon armor_stand ~ ~ ~ {NoGravity:1,Tags:["flameling","temp"],Small:1b,CustomName:'{"text":"Flameling","color":"gold"}',CustomNameVisible:1b,NoBasePlate:1b,ShowArms:1b,Invisible:1,Invulnerable:1,ArmorItems:[{Count:1,id:"leather_boots",tag:{display:{color:16351261}}},{Count:1,id:"leather_leggings",tag:{display:{color:16351261}}},{Count:1,id:"leather_chestplate",tag:{display:{color:16351261}}},{Count:1,id:"jack_o_lantern"}]}
summon armor_stand ~ ~ ~ {Marker:1,Invisible:1,Invulnerable:1,Tags:["flameling_particle","temp"]}
data modify entity @e[tag=flameling,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute at @s run particle dust 1 .6 0.4 1 ~ ~.2 ~ 0.65 0.3 0.65 0 200
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..5.5] ~ ~ ~ 1 0.5

scoreboard players operation @s flamelingID += #fakeMax flamelingID
scoreboard players operation @e[tag=flameling,tag=temp,limit=3] flamelingID += #fakeMax flamelingID
scoreboard players operation @e[tag=flameling_particle,tag=temp,limit=3] flamelingID += #fakeMax flamelingID
execute as @e[type=minecraft:wolf,tag=temp,tag=flameling,limit=1] if score @s flamelingID = #fakeMax flamelingID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=temp,tag=flameling,limit=1] if score @s flamelingID = #fakeMax flamelingID run tag @s remove temp
execute as @e[type=minecraft:armor_stand,tag=temp,tag=flameling_particle,limit=1] if score @s flamelingID = #fakeMax flamelingID run tag @s remove temp
execute as @e[type=minecraft:wolf,tag=flameling,limit=1] if score @s flamelingID = #fakeMax flamelingID run scoreboard players add #fakeMax flamelingID 1