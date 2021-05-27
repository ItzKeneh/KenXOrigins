effect give @s speed 10 3 true
execute at @s run tag @e[distance=..4.75] add Targeted
tag @s remove Targeted
effect give @e[tag=Targeted] slowness 10 4 true
