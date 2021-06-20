summon minecraft:sheep ~ ~1 ~ {Passengers:[{id:area_effect_cloud,Tags:["solar_guardian","temp"],CustomName:'{"text":"Solar Guardian","color":"yellow"}',CustomNameVisible:1,Duration:100000000},{id:horse,rewardExp:false,DeathLootTable:"minecraft:empty",Tame:1,Tags:["solar_guardian","temp"],Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1}],Invulnerable:1},{id:wolf,Tags:["solar_guardian","temp"],Attributes:[{Name:"generic.attack_damage",Base:7}],Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1}],Invulnerable:1,Passengers:[{id:creeper,Tags:["solar_guardian","temp"],Fuse:1000000,Silent:1,ActiveEffects:[{Id:14,Duration:1000000,Ambient:1,ShowParticles:1},{Id:18,Duration:100000,Ambient:1,ShowParticles:1}],Invulnerable:1,rewardExp:false,DeathLootTable:"minecraft:empty"}]}],Color:4,rewardExp:false,DeathLootTable:"minecraft:empty",Invulnerable:1,Attributes:[{Name:"generic.movement_speed",Base:0.4}],Tags:["solar_guardian","temp"]}
data modify entity @e[tag=solar_guardian,type=wolf,limit=1,distance=..4.5] Owner set from entity @s UUID
execute at @s run particle dust 1 0.812 0.4 1 ~ ~.2 ~ 0.65 0 0.65 0 100
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..5.5] ~ ~ ~ 1 0.6

scoreboard players operation @s solarID += #fakeMax solarID
scoreboard players operation @e[tag=solar_guardian,tag=temp,limit=5] solarID += #fakeMax solarID
execute as @e[type=minecraft:sheep,tag=temp,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run tag @s remove temp
execute as @e[type=minecraft:area_effect_cloud,tag=temp,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run tag @s remove temp
execute as @e[type=minecraft:horse,tag=temp,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run tag @s remove temp
execute as @e[type=minecraft:wolf,tag=temp,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run tag @s remove temp
execute as @e[type=minecraft:creeper,tag=temp,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run tag @s remove temp
execute as @e[type=minecraft:sheep,tag=solar_guardian,limit=1] if score @s solarID = #fakeMax solarID run scoreboard players add #fakeMax solarID 1