effect give @s fire_resistance 35 0 true
effect give @s speed 35 1 true
effect give @s glowing 35 0 true
execute at @s run particle dust 1 .7 .1 1 ~ ~.2 ~ 0.65 0 0.65 0 100
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..5.5] ~ ~ ~ 1 1.9
