summon minecraft:enderman ~ ~ ~ {Invulnerable:1,Tags:["temp","endBuddy"],DeathLootTable:"minecraft:empty",Passengers:[{id:"wolf",Attributes:[{Name:"generic.attack_damage",Base:7}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1}],Tags:["endBuddy","temp"]}]}
data modify entity @e[tag=endBuddy,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute at @s run particle dust 0.463 0.137 0.694 1 ~ ~.2 ~ 0.65 0.3 0.65 0 200
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..5.5] ~ ~ ~ 1 0.5

scoreboard players operation @s enderBuddy += #fakeMax enderBuddy
scoreboard players operation @e[tag=endBuddy,tag=temp,limit=2] enderBuddy += #fakeMax enderBuddy
execute as @e[type=minecraft:wolf,tag=temp,tag=endBuddy,limit=1] if score @s enderBuddy = #fakeMax enderBuddy run tag @s remove temp
execute as @e[type=minecraft:enderman,tag=temp,tag=endBuddy,limit=1] if score @s enderBuddy = #fakeMax enderBuddy run tag @s remove temp
execute as @e[type=minecraft:wolf,tag=endBuddy,limit=1] if score @s enderBuddy = #fakeMax enderBuddy run scoreboard players add #fakeMax enderBuddy 1